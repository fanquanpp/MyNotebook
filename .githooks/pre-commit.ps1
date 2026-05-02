#!/usr/bin/env pwsh
#
# Pre-commit hook for MyNotebook (PowerShell version)
# Automatically checks encoding and validates Markdown files
#

param(
    [switch]$Verbose
)

$ErrorActionPreference = "Continue"

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Pre-commit Hook - MyNotebook Validation" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
Push-Location $projectRoot

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$ERRORS = 0
$WARNINGS = 0

# Get staged Markdown files
$stagedFiles = git diff --cached --name-only --diff-filter=ACM | Where-Object { $_ -match '\.(md|MD)$' }

if ($stagedFiles) {
    Write-Host "[1/3] Checking file encoding..." -ForegroundColor Yellow

    foreach ($file in $stagedFiles) {
        $fullPath = Join-Path $projectRoot $file

        if (Test-Path $fullPath) {
            # Check for BOM
            $bytes = [System.IO.File]::ReadAllBytes($fullPath)
            if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
                Write-Host "  ERROR: $file has UTF-8 BOM" -ForegroundColor Red
                Write-Host "    Fix: .\.scripts\validate_encoding.ps1 -Fix" -ForegroundColor Gray
                $ERRORS++
            }

            # Check for garbled characters
            $content = [System.IO.File]::ReadAllText($fullPath, $utf8NoBom)
            $garbledPatterns = @("ï¼", "ä¸", "é€", "å›", "ä»", "ä½", "æˆ", "åœ", "æ˜", "è¿", "æ–", "çš")
            foreach ($pattern in $garbledPatterns) {
                if ($content -match [regex]::Escape($pattern)) {
                    Write-Host "  ERROR: $file contains garbled characters" -ForegroundColor Red
                    Write-Host "    Fix: .\.scripts\validate_encoding.ps1 -Fix" -ForegroundColor Gray
                    $ERRORS++
                    break
                }
            }
        }
    }

    Write-Host "[2/3] Checking file naming conventions..." -ForegroundColor Yellow

    foreach ($file in $stagedFiles) {
        $fileName = Split-Path -Leaf $file

        # Skip README.md
        if ($fileName -eq "README.md") {
            continue
        }

        # Check naming pattern
        if ($fileName -notmatch '^(C|G|V)\d{2}_\d{3}-.+\.md$') {
            Write-Host "  WARNING: $file does not follow naming convention" -ForegroundColor Yellow
            Write-Host "    Expected: C01_101-description.md, G01_201-description.md, V01_101-description.md" -ForegroundColor Gray
            $WARNINGS++
        }
    }

    Write-Host "[3/3] Checking Markdown structure..." -ForegroundColor Yellow

    foreach ($file in $stagedFiles) {
        $fullPath = Join-Path $projectRoot $file

        if (Test-Path $fullPath) {
            $content = [System.IO.File]::ReadAllText($fullPath, $utf8NoBom)

            # Check for empty files
            if ($content.Trim().Length -eq 0) {
                Write-Host "  WARNING: $file is empty" -ForegroundColor Yellow
                $WARNINGS++
            }

            # Check for very long lines (>200 characters)
            $lines = $content -split "`n"
            $lineNum = 0
            foreach ($line in $lines) {
                $lineNum++
                if ($line.Length -gt 200 -and $line -notmatch '^\s{4,}') {
                    if ($Verbose) {
                        Write-Host "  INFO: $file line $lineNum is very long ($($line.Length) chars)" -ForegroundColor Gray
                    }
                }
            }
        }
    }
} else {
    Write-Host "No Markdown files staged for commit." -ForegroundColor Green
}

Pop-Location

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Pre-commit Check Summary" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

if ($ERRORS -gt 0) {
    Write-Host "Errors: $ERRORS" -ForegroundColor Red
    Write-Host "Warnings: $WARNINGS" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Please fix the errors before committing." -ForegroundColor Red
    exit 1
} elseif ($WARNINGS -gt 0) {
    Write-Host "Errors: 0" -ForegroundColor Green
    Write-Host "Warnings: $WARNINGS" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Commit allowed but please review warnings." -ForegroundColor Cyan
    exit 0
} else {
    Write-Host "All checks passed!" -ForegroundColor Green
    Write-Host "Errors: 0" -ForegroundColor Green
    Write-Host "Warnings: 0" -ForegroundColor Green
    exit 0
}