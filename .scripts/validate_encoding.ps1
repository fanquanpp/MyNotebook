# Encoding Validation Script for Markdown Files
# Validates UTF-8 encoding without BOM for all .md files
# Uses .NET APIs to ensure proper UTF-8 handling without BOM

param(
    [switch]$Fix,
    [switch]$Verbose
)

$ErrorCount = 0
$WarningCount = 0
$BOMFiles = @()
$InvalidUTF8Files = @()

# UTF-8 without BOM encoding object
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

function Get-FileEncoding {
    param([string]$Path)

    $bytes = [System.IO.File]::ReadAllBytes($Path)

    if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
        return "UTF-8-BOM"
    }

    if ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFF -and $bytes[1] -eq 0xFE) {
        return "UTF-16-LE"
    }

    if ($bytes.Length -ge 2 -and $bytes[0] -eq 0xFE -and $bytes[1] -eq 0xFF) {
        return "UTF-16-BE"
    }

    try {
        $null = [System.Text.Encoding]::UTF8.GetString($bytes)
        return "UTF-8"
    }
    catch {
        return "Unknown"
    }
}

# Safe file write with UTF-8 without BOM
function Write-FileUtf8NoBom {
    param([string]$Path, [string]$Content)
    [System.IO.File]::WriteAllText($Path, $Content, $utf8NoBom)
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Markdown File Encoding Validation" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object { $_.FullName -notmatch '\\\.git\\' -and $_.FullName -notmatch '\\\.github\\' -and $_.FullName -notmatch '\\Renpydoc\\' -and $_.FullName -notmatch '\\Godotdoc\\' }

Write-Host "Scanning $($mdFiles.Count) markdown files..." -ForegroundColor Gray
Write-Host ""

foreach ($file in $mdFiles) {
    $encoding = Get-FileEncoding -Path $file.FullName

    if ($Verbose) {
        Write-Host "[$encoding] $($file.FullName)" -ForegroundColor Gray
    }

    switch ($encoding) {
        "UTF-8-BOM" {
            $BOMFiles += $file.FullName
            if ($Verbose) {
                Write-Host "  [WARNING] File has BOM" -ForegroundColor Yellow
            }
        }
        "Unknown" {
            $InvalidUTF8Files += $file.FullName
            Write-Host "  [ERROR] Invalid encoding: $encoding" -ForegroundColor Red
            $ErrorCount++
        }
        "UTF-16-LE" {
            $InvalidUTF8Files += $file.FullName
            Write-Host "  [ERROR] UTF-16 LE not supported: $encoding" -ForegroundColor Red
            $ErrorCount++
        }
        "UTF-16-BE" {
            $InvalidUTF8Files += $file.FullName
            Write-Host "  [ERROR] UTF-16 BE not supported: $encoding" -ForegroundColor Red
            $ErrorCount++
        }
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Results" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if ($BOMFiles.Count -gt 0) {
    Write-Host "Files with UTF-8 BOM ($($BOMFiles.Count)):" -ForegroundColor Yellow
    foreach ($f in $BOMFiles) {
        Write-Host "  $f" -ForegroundColor Yellow
    }
    Write-Host ""
    $WarningCount += $BOMFiles.Count
}

if ($InvalidUTF8Files.Count -gt 0) {
    Write-Host "Files with invalid encoding ($($InvalidUTF8Files.Count)):" -ForegroundColor Red
    foreach ($f in $InvalidUTF8Files) {
        Write-Host "  $f" -ForegroundColor Red
    }
    Write-Host ""
    $ErrorCount += $InvalidUTF8Files.Count
}

if ($ErrorCount -eq 0 -and $WarningCount -eq 0) {
    Write-Host "All files are valid UTF-8 without BOM!" -ForegroundColor Green
    Write-Host ""
    exit 0
}
elseif ($ErrorCount -eq 0 -and $WarningCount -gt 0) {
    Write-Host "Validation completed with warnings." -ForegroundColor Yellow
    Write-Host ""

    if ($Fix) {
        Write-Host "Fixing BOM files..." -ForegroundColor Cyan
        foreach ($f in $BOMFiles) {
            $bytes = [System.IO.File]::ReadAllBytes($f)
            $content = $utf8NoBom.GetString($bytes[3..($bytes.Length - 1)])
            Write-FileUtf8NoBom -Path $f -Content $content
            Write-Host "  Fixed: $f" -ForegroundColor Green
        }
        Write-Host ""
        Write-Host "All BOM files fixed!" -ForegroundColor Green
    }
    else {
        Write-Host "Run with -Fix to remove BOM from files." -ForegroundColor Gray
    }
    exit 0
}
else {
    Write-Host "Validation failed with $ErrorCount errors and $WarningCount warnings." -ForegroundColor Red
    exit 1
}
