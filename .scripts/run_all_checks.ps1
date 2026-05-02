# Comprehensive Check and Fix Script
# Runs all validation and consistency checks
# Uses .NET APIs to ensure UTF-8 without BOM encoding

param(
    [switch]$Fix,
    [switch]$Verbose
)

# UTF-8 without BOM encoding object
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

function Write-FileUtf8NoBom {
    param([string]$Path, [string]$Content)
    [System.IO.File]::WriteAllText($Path, $Content, $utf8NoBom)
}

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "MyNotebook Comprehensive Check & Fix Tool" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
if ($Fix) {
    Write-Host "[FIX MODE] Will automatically fix issues" -ForegroundColor Yellow
} else {
    Write-Host "[CHECK MODE] Only report issues" -ForegroundColor Gray
}
Write-Host ""

$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Push-Location (Join-Path $scriptPath "..")

$totalErrors = 0
$totalWarnings = 0
$totalFixed = 0

# [1] Encoding Validation
Write-Host "[1/5] Running encoding validation..." -ForegroundColor Yellow
& "$scriptPath\validate_encoding.ps1" -Fix:$Fix -Verbose:$Verbose
if ($LASTEXITCODE -ne 0) {
    $totalErrors++
}
Write-Host ""

# [2] Check for garbled Chinese characters (basic heuristic)
Write-Host "[2/5] Checking for garbled text patterns..." -ForegroundColor Yellow
$garbledPatterns = @(
    "[\x80-\xFF]{4,}",  # Multiple consecutive high-bit characters
    "ï¼", "ä¸", "é€", "å›", "ä»", "ä½", "æˆ", "åœ", "æ˜", "è¿", "æ–", "çš"  # Common mis-encoding patterns
)
$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and
    $_.FullName -notmatch '\\\.github\\' -and
    $_.FullName -notmatch '\\Renpydoc\\' -and
    $_.FullName -notmatch '\\Godotdoc\\'
}
$garbledFiles = @()
foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    foreach ($pattern in $garbledPatterns) {
        if ($content -match $pattern) {
            $garbledFiles += $file.FullName
            break
        }
    }
}
if ($garbledFiles.Count -gt 0) {
    Write-Host "  WARNING: Found $($garbledFiles.Count) files with potential garbled text" -ForegroundColor Yellow
    $totalWarnings += $garbledFiles.Count
    if ($Verbose) {
        foreach ($f in $garbledFiles) {
            Write-Host "    $f" -ForegroundColor Gray
        }
    }
} else {
    Write-Host "  OK: No garbled text patterns found" -ForegroundColor Green
}
Write-Host ""

# [3] Version consistency check
Write-Host "[3/5] Checking version consistency..." -ForegroundColor Yellow
$rootReadme = "README.md"
if (Test-Path $rootReadme) {
    $rootContent = [System.IO.File]::ReadAllText($rootReadme, $utf8NoBom)
    if ($rootContent -match '@Version:\s*(v\d+\.\d+\.\d+)') {
        $expectedVersion = $matches[1]
        Write-Host "  Expected version: $expectedVersion" -ForegroundColor Gray
        
        $modules = Get-ChildItem -Directory | Where-Object { $_.Name -match '^[0-9]{2}-' }
        $mismatchedVersions = @()
        foreach ($module in $modules) {
            $readme = Join-Path $module.FullName "README.md"
            if (Test-Path $readme) {
                $content = [System.IO.File]::ReadAllText($readme, $utf8NoBom)
                if ($content -match '@Version:\s*(v\d+\.\d+\.\d+)') {
                    $version = $matches[1]
                    if ($version -ne $expectedVersion) {
                        $mismatchedVersions += @{File = $readme; Version = $version}
                    }
                }
            }
        }
        if ($mismatchedVersions.Count -gt 0) {
            Write-Host "  WARNING: $($mismatchedVersions.Count) modules have mismatched versions" -ForegroundColor Yellow
            $totalWarnings += $mismatchedVersions.Count
        } else {
            Write-Host "  OK: All versions are consistent" -ForegroundColor Green
        }
    }
}
Write-Host ""

# [4] File naming convention check
Write-Host "[4/5] Checking file naming conventions..." -ForegroundColor Yellow
$badNames = @()
foreach ($file in $mdFiles) {
    $name = $file.Name
    if (-not ($name -match '^(C|G|V)\d{2}_\d{3}-.+\.md$' -or $name -eq 'README.md')) {
        $badNames += $file.FullName
    }
}
if ($badNames.Count -gt 0) {
    Write-Host "  WARNING: $($badNames.Count) files don't follow naming convention" -ForegroundColor Yellow
    $totalWarnings += $badNames.Count
    if ($Verbose) {
        foreach ($f in $badNames) {
            Write-Host "    $f" -ForegroundColor Gray
        }
    }
} else {
    Write-Host "  OK: All file names follow convention" -ForegroundColor Green
}
Write-Host ""

# [5] Directory structure check
Write-Host "[5/5] Checking directory structure..." -ForegroundColor Yellow
$expectedDirs = @("01-Github", "02-C语言", "03-Python", "04-Java", "05-HTML5", 
                 "06-CSS", "07-Git", "08-Javascript", "09-Markdown", "10-MySQL", 
                 "11-Typescript", "12-Vue3", "13-C++", "14-Lua", "15-Godot", "16-Renpy")
$missingDirs = @()
foreach ($dir in $expectedDirs) {
    if (-not (Test-Path $dir)) {
        $missingDirs += $dir
    }
}
if ($missingDirs.Count -gt 0) {
    Write-Host "  WARNING: Missing directories: $($missingDirs -join ', ')" -ForegroundColor Yellow
    $totalWarnings += $missingDirs.Count
} else {
    Write-Host "  OK: All expected directories exist" -ForegroundColor Green
}
Write-Host ""

# Summary
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Check Summary" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

if ($totalErrors -eq 0 -and $totalWarnings -eq 0) {
    Write-Host "All checks passed! No issues found." -ForegroundColor Green
} else {
    Write-Host "Total Errors: $totalErrors" -ForegroundColor Red
    Write-Host "Total Warnings: $totalWarnings" -ForegroundColor Yellow
    Write-Host ""
    if ($totalErrors -gt 0) {
        Write-Host "Please fix the errors before continuing." -ForegroundColor Red
    } elseif ($totalWarnings -gt 0 -and -not $Fix) {
        Write-Host "Run with -Fix to automatically fix some issues." -ForegroundColor Gray
    }
}

Write-Host ""
Pop-Location
exit $(if ($totalErrors -gt 0) { 1 } else { 0 })
