param(
    [Parameter(Mandatory=$true)]
    [string]$NewVersion
)

$RootReadme = "README.md"
$Modules = Get-ChildItem -Directory | Where-Object { $_.Name -match '^[0-9]{2}-' } | Sort-Object Name

Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "MyNotebook Version Sync Tool" -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "New Version: $NewVersion" -ForegroundColor Green
Write-Host ""

if (-not (Test-Path $RootReadme)) {
    Write-Host "Error: Root $RootReadme not found" -ForegroundColor Red
    exit 1
}

Write-Host "[1/4] Updating root README version..." -ForegroundColor Yellow
$rootContent = Get-Content $RootReadme -Raw
$rootContent = $rootContent -replace '@Version:\s*v\d+\.\d+\.\d+', "@Version: $NewVersion"
$rootContent | Set-Content $RootReadme -NoNewline -Encoding UTF8
Write-Host "OK: Root README updated" -ForegroundColor Green

Write-Host "[2/4] Updating module README versions..." -ForegroundColor Yellow
$updatedCount = 0
foreach ($module in $Modules) {
    $readme = Join-Path $module.FullName "README.md"
    if (Test-Path $readme) {
        $content = Get-Content $readme -Raw
        if ($content -match '@Version:') {
            $newContent = $content -replace '@Version:\s*v\d+\.\d+\.\d+', "@Version: $NewVersion"
            $newContent | Set-Content $readme -NoNewline -Encoding UTF8
            Write-Host "  OK: $($module.Name)" -ForegroundColor Green
            $updatedCount++
        }
    }
}
Write-Host "OK: $updatedCount modules updated" -ForegroundColor Green

Write-Host "[3/4] Adding changelog entry..." -ForegroundColor Yellow
$today = Get-Date -Format "yyyy-MM-dd"
$logEntry = "### $today`n`n- **$NewVersion** - Version sync update"

if (-not ($rootContent -match "### $today")) {
    $rootContent = $rootContent -replace '(### 2026-\d+-\d+)', "$logEntry`n`n`$1"
    $rootContent | Set-Content $RootReadme -NoNewline -Encoding UTF8
    Write-Host "OK: Changelog added" -ForegroundColor Green
} else {
    Write-Host "INFO: Today's changelog already exists, skipping" -ForegroundColor Cyan
}

Write-Host "[4/4] Generating sync report..." -ForegroundColor Yellow
Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Version sync completed!" -ForegroundColor Green
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "All modules updated to: $NewVersion" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. git add ."
Write-Host "  2. git commit -m `"$NewVersion - Version sync`""
Write-Host "  3. git push"
Write-Host ""
