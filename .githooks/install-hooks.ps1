#!/usr/bin/env pwsh
#
# Install Git hooks for MyNotebook
# Run this script once to enable pre-commit validation
#

$ErrorActionPreference = "Stop"

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Git Hooks Installer for MyNotebook" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$hooksDir = Join-Path $projectRoot ".githooks"
$gitHooksDir = Join-Path $projectRoot ".git\hooks"

Write-Host "Project root: $projectRoot" -ForegroundColor Gray
Write-Host "Hooks directory: $hooksDir" -ForegroundColor Gray
Write-Host ""

# Check if hooks directory exists
if (-not (Test-Path $hooksDir)) {
    Write-Host "ERROR: .githooks directory not found!" -ForegroundColor Red
    Write-Host "Please run this script from the project root." -ForegroundColor Yellow
    exit 1
}

# Check if .git directory exists
if (-not (Test-Path (Join-Path $projectRoot ".git"))) {
    Write-Host "ERROR: Not a Git repository!" -ForegroundColor Red
    exit 1
}

# Detect OS and choose appropriate hook
$isWindows = $PSVersionTable.Platform -eq "Win32NT" -or $null -eq $PSVersionTable.Platform

Write-Host "[1/2] Installing pre-commit hook..." -ForegroundColor Yellow

if ($isWindows) {
    # Windows: Use PowerShell script
    $sourceHook = Join-Path $hooksDir "pre-commit.ps1"
    $targetHook = Join-Path $gitHooksDir "pre-commit.ps1"

    if (Test-Path $targetHook) {
        Write-Host "  Backed up existing hook to pre-commit.ps1.bak" -ForegroundColor Yellow
        Copy-Item $targetHook "$targetHook.bak" -Force
    }

    Copy-Item $sourceHook $targetHook -Force
    Write-Host "  Installed: pre-commit.ps1 (PowerShell)" -ForegroundColor Green

    # Also create a simple wrapper for git hooks
    $wrapperHook = Join-Path $gitHooksDir "pre-commit"
    $wrapperContent = @"
#!/bin/sh
# PowerShell hook wrapper (Windows)
pwsh -File "`"$PSScriptRoot\pre-commit.ps1`""
exit `$?
"@
    [System.IO.File]::WriteAllText($wrapperHook, $wrapperContent, [System.Text.UTF8Encoding]::new($false))
    Write-Host "  Installed: pre-commit (wrapper)" -ForegroundColor Green

} else {
    # Unix-like: Use shell script
    $sourceHook = Join-Path $hooksDir "pre-commit"
    $targetHook = Join-Path $gitHooksDir "pre-commit"

    if (Test-Path $targetHook) {
        Write-Host "  Backed up existing hook to pre-commit.bak" -ForegroundColor Yellow
        Copy-Item $targetHook "$targetHook.bak" -Force
    }

    Copy-Item $sourceHook $targetHook -Force
    chmod +x $targetHook
    Write-Host "  Installed: pre-commit (shell)" -ForegroundColor Green
}

Write-Host ""
Write-Host "[2/2] Configuring Git to use custom hooks directory..." -ForegroundColor Yellow

# Configure Git to use custom hooks directory
git config core.hooksPath ".githooks" 2>&1 | Out-Null

if ($LASTEXITCODE -eq 0) {
    Write-Host "  Configured: core.hooksPath = .githooks" -ForegroundColor Green
} else {
    Write-Host "  WARNING: Could not configure core.hooksPath" -ForegroundColor Yellow
    Write-Host "  Please run manually: git config core.hooksPath .githooks" -ForegroundColor Gray
}

Write-Host ""
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Installation Complete!" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Pre-commit hooks are now active." -ForegroundColor Green
Write-Host "They will automatically check:" -ForegroundColor Green
Write-Host "  - File encoding (UTF-8 without BOM)" -ForegroundColor Gray
Write-Host "  - Garbled Chinese characters" -ForegroundColor Gray
Write-Host "  - File naming conventions" -ForegroundColor Gray
Write-Host "  - Markdown structure" -ForegroundColor Gray
Write-Host ""
Write-Host "To bypass hooks temporarily: git commit --no-verify" -ForegroundColor Yellow
Write-Host "To uninstall hooks: git config --unset core.hooksPath" -ForegroundColor Yellow
Write-Host ""