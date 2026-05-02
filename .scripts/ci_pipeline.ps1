#!/usr/bin/env pwsh
#
# CI/CD Integration Script
# Runs all checks in CI/CD environment
#

param(
    [switch]$Verbose,
    [switch]$Strict
)

$ErrorActionPreference = "Continue"

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "MyNotebook CI/CD Pipeline" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Start time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Gray
Write-Host ""

$projectRoot = $PWD.Path
$allPassed = $true
$failedChecks = @()

# [1] Encoding Validation
Write-Host "[1/6] Running encoding validation..." -ForegroundColor Yellow
$encodingResult = & "$projectRoot\.scripts\validate_encoding.ps1" -Verbose:$Verbose
if ($LASTEXITCODE -ne 0) {
    $allPassed = $false
    $failedChecks += "Encoding Validation"
    Write-Host "  FAILED" -ForegroundColor Red
} else {
    Write-Host "  PASSED" -ForegroundColor Green
}
Write-Host ""

# [2] Quality Scoring
Write-Host "[2/6] Running quality scoring..." -ForegroundColor Yellow
$qualityScore = & "$projectRoot\.scripts\quality_score.ps1" -Detailed:$Verbose
$qualityExitCode = $LASTEXITCODE

Write-Host "  Quality Score: $($qualityScore | Select-String 'OVERALL:\s*([\d\.]+)' | ForEach-Object { $_.Matches.Groups[1].Value })" -ForegroundColor Gray

if ($qualityExitCode -ne 0) {
    if ($Strict) {
        $allPassed = $false
        $failedChecks += "Quality Scoring"
        Write-Host "  FAILED (Strict mode)" -ForegroundColor Red
    } else {
        Write-Host "  WARNING (Non-strict mode)" -ForegroundColor Yellow
    }
} else {
    Write-Host "  PASSED" -ForegroundColor Green
}
Write-Host ""

# [3] Batch Link Check
Write-Host "[3/6] Checking for broken links..." -ForegroundColor Yellow
$linkCheck = & "$projectRoot\.scripts\batch_fix.ps1" -Links -Verbose:$Verbose 2>&1 | Out-String

if ($linkCheck -match 'broken internal links') {
    $brokenCount = [int]($linkCheck -match '\d+(?= broken)' | Select-Object -First 1)
    if ($brokenCount -gt 0) {
        if ($Strict) {
            $allPassed = $false
            $failedChecks += "Link Validation"
            Write-Host "  FAILED: Found $brokenCount broken links" -ForegroundColor Red
        } else {
            Write-Host "  WARNING: Found $brokenCount broken links" -ForegroundColor Yellow
        }
    } else {
        Write-Host "  PASSED: No broken links" -ForegroundColor Green
    }
} else {
    Write-Host "  PASSED" -ForegroundColor Green
}
Write-Host ""

# [4] File Naming Convention Check
Write-Host "[4/6] Checking file naming conventions..." -ForegroundColor Yellow

$utf8NoBom = New-Object System.Text.UTF8Encoding $false
$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and
    $_.FullName -notmatch '\\\.github\\' -and
    $_.FullName -notmatch '\\Renpydoc\\' -and
    $_.FullName -notmatch '\\Godotdoc\\'
}

$badNames = @()
foreach ($file in $mdFiles) {
    $fileName = $file.Name
    if ($fileName -ne "README.md" -and $fileName -notmatch '^(C|G|V)\d{2}_\d{3}-.+\.md$') {
        $badNames += $fileName
    }
}

if ($badNames.Count -gt 0) {
    if ($Strict) {
        $allPassed = $false
        $failedChecks += "File Naming"
        Write-Host "  FAILED: $($badNames.Count) files with bad naming" -ForegroundColor Red
    } else {
        Write-Host "  WARNING: $($badNames.Count) files with bad naming" -ForegroundColor Yellow
    }
    if ($Verbose) {
        foreach ($name in $badNames | Select-Object -First 10) {
            Write-Host "    - $name" -ForegroundColor Gray
        }
    }
} else {
    Write-Host "  PASSED: All files follow naming convention" -ForegroundColor Green
}
Write-Host ""

# [5] Directory Structure Check
Write-Host "[5/6] Checking directory structure..." -ForegroundColor Yellow

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
    $allPassed = $false
    $failedChecks += "Directory Structure"
    Write-Host "  FAILED: Missing directories" -ForegroundColor Red
    foreach ($dir in $missingDirs) {
        Write-Host "    - $dir" -ForegroundColor Gray
    }
} else {
    Write-Host "  PASSED: All expected directories exist" -ForegroundColor Green
}
Write-Host ""

# [6] Git Workflow Check
Write-Host "[6/6] Checking Git workflow configuration..." -ForegroundColor Yellow

$hasWorkflows = Test-Path ".github\workflows"
$hasHooksConfig = git config core.hooksPath 2>&1 | Select-Object -First 1

if (-not $hasWorkflows) {
    Write-Host "  WARNING: No GitHub Actions workflows found" -ForegroundColor Yellow
} else {
    Write-Host "  OK: GitHub Actions workflows found" -ForegroundColor Gray
}

if ($hasHooksConfig) {
    Write-Host "  OK: Custom hooks path configured: $hasHooksConfig" -ForegroundColor Gray
} else {
    Write-Host "  INFO: No custom hooks path configured (run .\.githooks\install-hooks.ps1)" -ForegroundColor Gray
}
Write-Host ""

# Summary
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "CI/CD Pipeline Summary" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "End time: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Gray
Write-Host ""

if ($allPassed) {
    Write-Host "Result: ALL CHECKS PASSED" -ForegroundColor Green
    Write-Host ""
    exit 0
} else {
    Write-Host "Result: SOME CHECKS FAILED" -ForegroundColor Red
    Write-Host ""
    Write-Host "Failed checks:" -ForegroundColor Red
    foreach ($check in $failedChecks) {
        Write-Host "  - $check" -ForegroundColor Red
    }
    Write-Host ""
    exit 1
}