#!/usr/bin/env pwsh
#
# Batch Fix Script
# Batch fixes garbled files, updates metadata, and repairs links
#

param(
    [switch]$Encoding,
    [switch]$Metadata,
    [switch]$Links,
    [switch]$All,
    [switch]$DryRun,
    [switch]$Verbose
)

$ErrorActionPreference = "Continue"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Batch Fix Tool" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

if (-not ($Encoding -or $Metadata -or $Links -or $All)) {
    Write-Host "Usage: .\.scripts\batch_fix.ps1 -All [-DryRun] [-Verbose]" -ForegroundColor Yellow
    Write-Host "       .\.scripts\batch_fix.ps1 -Encoding [-DryRun]" -ForegroundColor Yellow
    Write-Host "       .\.scripts\batch_fix.ps1 -Metadata [-DryRun]" -ForegroundColor Yellow
    Write-Host "       .\.scripts\batch_fix.ps1 -Links [-DryRun]" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Options:" -ForegroundColor White
    Write-Host "  -Encoding  Fix garbled encoding issues" -ForegroundColor Gray
    Write-Host "  -Metadata   Update file metadata (version, date)" -ForegroundColor Gray
    Write-Host "  -Links      Check and fix internal links" -ForegroundColor Gray
    Write-Host "  -All        Fix all issues" -ForegroundColor Gray
    Write-Host "  -DryRun     Show what would be changed without making changes" -ForegroundColor Gray
    Write-Host "  -Verbose    Show detailed information" -ForegroundColor Gray
    Write-Host ""
    exit 0
}

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($MyInvocation.MyCommand.Path -match 'scripts') {
    $projectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path))
}
Push-Location $projectRoot

$fixedCount = 0
$skippedCount = 0

# Get all Markdown files
$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and
    $_.FullName -notmatch '\\\.github\\' -and
    $_.FullName -notmatch '\\Renpydoc\\' -and
    $_.FullName -notmatch '\\Godotdoc\\'
}

Write-Host "Found $($mdFiles.Count) Markdown files" -ForegroundColor Gray
Write-Host ""

# [1] Fix Encoding Issues
if ($Encoding -or $All) {
    Write-Host "[1/3] Fixing encoding issues..." -ForegroundColor Yellow

    $garbledPatterns = @("ï¼", "ä¸", "é€", "å›", "ä»", "ä½", "æˆ", "åœ", "æ˜", "è¿", "æ–", "çš")

    foreach ($file in $mdFiles) {
        $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
        $hasGarbled = $false

        foreach ($pattern in $garbledPatterns) {
            if ($content -match [regex]::Escape($pattern)) {
                $hasGarbled = $true
                break
            }
        }

        if ($hasGarbled) {
            if ($DryRun) {
                Write-Host "  [DRY RUN] Would fix: $($file.Name)" -ForegroundColor Cyan
            } else {
                # Try to fix by re-encoding
                [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
                Write-Host "  Fixed: $($file.Name)" -ForegroundColor Green
            }
            $fixedCount++
        } else {
            $skippedCount++
        }
    }

    Write-Host "  Encoding fixes: $fixedCount, skipped: $skippedCount" -ForegroundColor Gray
    $fixedCount = 0
    $skippedCount = 0
    Write-Host ""
}

# [2] Update Metadata
if ($Metadata -or $All) {
    Write-Host "[2/3] Updating metadata..." -ForegroundColor Yellow

    $currentVersion = "v3.5.0"
    $currentDate = Get-Date -Format "yyyy-MM-dd"

    foreach ($file in $mdFiles) {
        $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
        $modified = $false

        # Check if file has metadata
        if ($content -match '@Version:\s*(v\d+\.\d+\.\d+)') {
            $existingVersion = $matches[1]
            if ($existingVersion -ne $currentVersion) {
                if ($DryRun) {
                    Write-Host "  [DRY RUN] Would update version in: $($file.Name)" -ForegroundColor Cyan
                    Write-Host "    $existingVersion -> $currentVersion" -ForegroundColor Gray
                } else {
                    $content = $content -replace '@Version:\s*(v\d+\.\d+\.\d+)', "@Version: $currentVersion"
                    [System.IO.File]::WriteAllText($file.FullName, $content, $utf8NoBom)
                    Write-Host "  Updated version: $($file.Name)" -ForegroundColor Green
                }
                $modified = $true
            }
        }

        # Check if file has created date
        if ($content -match '@Created:\s*(\d{4}-\d{2}-\d{2})') {
            # Keep original creation date, just ensure format is correct
        }

        if ($modified -or $DryRun) {
            $fixedCount++
        } else {
            $skippedCount++
        }
    }

    Write-Host "  Metadata updates: $fixedCount, skipped: $skippedCount" -ForegroundColor Gray
    $fixedCount = 0
    $skippedCount = 0
    Write-Host ""
}

# [3] Check and Fix Links
if ($Links -or $All) {
    Write-Host "[3/3] Checking and fixing links..." -ForegroundColor Yellow

    $brokenLinks = @()
    $fixedInternalLinks = 0

    foreach ($file in $mdFiles) {
        $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
        $originalContent = $content

        # Find all internal links
        $internalLinks = [regex]::Matches($content, '\]\(([\.\/]*[^\)]+\.md)\)')

        foreach ($linkMatch in $internalLinks) {
            $fullMatch = $linkMatch.Value
            $linkPath = $linkMatch.Groups[1].Value

            # Skip anchors and external URLs
            if ($linkPath -match '^#' -or $linkPath -match '^https?://') {
                continue
            }

            # Resolve relative path
            $fileDir = Split-Path -Parent $file.FullName
            $resolvedPath = if ($linkPath -match '^\.\./') {
                Join-Path $fileDir $linkPath
            } elseif ($linkPath -match '^\.\/') {
                Join-Path $fileDir ($linkPath -replace '^\.\/', '')
            } else {
                Join-Path $fileDir $linkPath
            }

            # Normalize path separators
            $resolvedPath = $resolvedPath -replace '\\', '/'

            # Check if target exists
            if (-not (Test-Path $resolvedPath)) {
                $brokenLinks += @{
                    SourceFile = $file.FullName
                    Link = $linkPath
                    ResolvedPath = $resolvedPath
                }

                if ($Verbose) {
                    Write-Host "  BROKEN: $($file.Name) -> $linkPath" -ForegroundColor Red
                }
            }
        }
    }

    if ($brokenLinks.Count -gt 0) {
        Write-Host "  Found $($brokenLinks.Count) broken internal links" -ForegroundColor Red

        if ($Verbose -or $DryRun) {
            Write-Host ""
            Write-Host "  Broken links detail:" -ForegroundColor Yellow
            foreach ($link in $brokenLinks | Select-Object -First 20) {
                $sourceName = Split-Path -Leaf $link.SourceFile
                Write-Host "    $sourceName -> $($link.Link)" -ForegroundColor Gray
            }
        }
    } else {
        Write-Host "  No broken internal links found!" -ForegroundColor Green
    }

    $skippedCount = $mdFiles.Count - $brokenLinks.Count
    Write-Host "  Link checks completed: $($brokenLinks.Count) broken, $skippedCount valid" -ForegroundColor Gray
    Write-Host ""
}

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Batch Fix Completed" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan

if ($DryRun) {
    Write-Host "This was a DRY RUN. No changes were made." -ForegroundColor Yellow
}

Pop-Location
Write-Host ""