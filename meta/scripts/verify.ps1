param(
    [switch]$Strict,
    [string]$Report = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$RootDir = Resolve-Path (Join-Path $PSScriptRoot "..\..")
Set-Location $RootDir

$failures = 0

function Invoke-Check {
    param(
        [string]$Name,
        [string[]]$Command
    )
    try {
        & $Command[0] $Command[1..($Command.Length - 1)]
    } catch {
        Write-Error "FAILED: $Name"
        $script:failures++
    }
}

Invoke-Check -Name "markdownlint" -Command @("npx", "--yes", "markdownlint-cli", "**/*.md", "-c", ".markdownlint.json", "--ignore", "node_modules", "--ignore", ".git")
Invoke-Check -Name "markdown-link-check: README.md" -Command @("npx", "--yes", "markdown-link-check", "README.md", "-c", ".markdown-link-check.json")
Invoke-Check -Name "markdown-link-check: SUMMARY.md" -Command @("npx", "--yes", "markdown-link-check", "SUMMARY.md", "-c", ".markdown-link-check.json")

if ($Report -ne "") {
    $xml = @"
<?xml version="1.0" encoding="UTF-8"?>
<testsuite name="notebook-validation" tests="3" failures="$failures">
  <testcase name="markdownlint"></testcase>
  <testcase name="markdown-link-check: README.md"></testcase>
  <testcase name="markdown-link-check: SUMMARY.md"></testcase>
</testsuite>
"@
    $xml | Out-File -FilePath $Report -Encoding utf8
}

if ($Strict -and $failures -ne 0) {
    exit 1
}
