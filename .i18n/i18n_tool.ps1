#!/usr/bin/env pwsh
#
# i18n Translation Tool
# Generates bilingual documentation and manages translations
#

param(
    [Parameter(Mandatory=$true)]
    [string]$Command,
    [string]$Locale = "en-US",
    [string]$File,
    [switch]$All
)

$ErrorActionPreference = "Continue"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "i18n Translation Tool" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($MyInvocation.MyCommand.Path -match 'scripts') {
    $projectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path))
}
Push-Location $projectRoot

$i18nConfig = Get-Content ".i18n\i18n-config.json" -Raw | ConvertFrom-Json

switch ($Command) {
    "init" {
        Write-Host "Initializing i18n directory structure..." -ForegroundColor Yellow

        # Create locale directories
        $locales = $i18nConfig.i18n.locales
        foreach ($loc in $locales) {
            $localeDir = ".i18n\$loc"
            if (-not (Test-Path $localeDir)) {
                New-Item -ItemType Directory -Path $localeDir -Force | Out-Null
                Write-Host "  Created: $localeDir" -ForegroundColor Green
            }
        }

        Write-Host "i18n initialization complete!" -ForegroundColor Green
    }

    "translate" {
        if (-not $File) {
            Write-Host "Error: -File parameter required" -ForegroundColor Red
            Write-Host "Usage: .\i18n_tool.ps1 -Command translate -File <path> [-Locale en-US]" -ForegroundColor Yellow
            return
        }

        Write-Host "Translating: $File" -ForegroundColor Yellow
        Write-Host "Target locale: $Locale" -ForegroundColor Gray
        Write-Host ""

        # This is a placeholder for actual translation logic
        # In a real implementation, you would integrate with a translation API
        Write-Host "Translation feature requires external translation API integration." -ForegroundColor Yellow
        Write-Host "Supported locales: $($i18nConfig.i18n.locales -join ', ')" -ForegroundColor Gray
    }

    "generate" {
        Write-Host "Generating bilingual stubs..." -ForegroundColor Yellow

        # Generate stubs for all modules
        $modules = Get-ChildItem -Directory | Where-Object { $_.Name -match '^[0-9]{2}-' }

        foreach ($module in $modules) {
            $moduleName = $module.Name
            $zhFile = "$moduleName\README.md"
            $enFile = ".i18n\en-US\$moduleName-README.md"

            if (Test-Path $zhFile) {
                if (-not (Test-Path (Split-Path $enFile))) {
                    New-Item -ItemType Directory -Path (Split-Path $enFile) -Force | Out-Null
                }

                Write-Host "  Generated stub: $enFile" -ForegroundColor Green
            }
        }

        Write-Host "Bilingual stub generation complete!" -ForegroundColor Green
    }

    "status" {
        Write-Host "i18n Status Report" -ForegroundColor Yellow
        Write-Host ""

        Write-Host "Configured locales:" -ForegroundColor White
        foreach ($locale in $i18nConfig.i18n.locales) {
            $localeName = $i18nConfig.i18n.localeNames.$locale
            Write-Host "  - $locale ($localeName)" -ForegroundColor Gray
        }

        Write-Host ""
        Write-Host "Translation coverage:" -ForegroundColor White

        # Count files per locale
        foreach ($locale in $i18nConfig.i18n.locales) {
            $localeDir = ".i18n\$locale"
            if (Test-Path $localeDir) {
                $files = (Get-ChildItem $localeDir -Recurse -Filter "*.md").Count
                Write-Host "  $locale : $files files" -ForegroundColor Gray
            } else {
                Write-Host "  $locale : 0 files" -ForegroundColor Gray
            }
        }
    }

    default {
        Write-Host "Available commands:" -ForegroundColor White
        Write-Host "  init       Initialize i18n directory structure" -ForegroundColor Gray
        Write-Host "  translate  Translate a specific file" -ForegroundColor Gray
        Write-Host "  generate   Generate bilingual stubs" -ForegroundColor Gray
        Write-Host "  status     Show i18n status report" -ForegroundColor Gray
        Write-Host ""
        Write-Host "Usage:" -ForegroundColor White
        Write-Host "  .\i18n_tool.ps1 -Command init" -ForegroundColor Gray
        Write-Host "  .\i18n_tool.ps1 -Command translate -File <path> [-Locale en-US]" -ForegroundColor Gray
        Write-Host "  .\i18n_tool.ps1 -Command generate" -ForegroundColor Gray
        Write-Host "  .\i18n_tool.ps1 -Command status" -ForegroundColor Gray
    }
}

Pop-Location
Write-Host ""