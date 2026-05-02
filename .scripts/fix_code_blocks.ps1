# Code Block Language Identifier Fixer
# Attempts to add language identifiers to code blocks based on file context
# Uses .NET APIs to ensure UTF-8 without BOM encoding

param(
    [switch]$DryRun,
    [switch]$Verbose
)

# UTF-8 without BOM encoding object
$utf8NoBom = New-Object System.Text.UTF8Encoding $false

function Write-FileUtf8NoBom {
    param([string]$Path, [string]$Content)
    [System.IO.File]::WriteAllText($Path, $Content, $utf8NoBom)
}

$ErrorCount = 0
$FixedCount = 0

# Language detection patterns based on content
$LanguagePatterns = @{
    "bash" = @("git ", "npm ", "pip ", "echo ", "export ", "chmod ", "mkdir ", "curl ")
    "powershell" = @("Get-", "Set-", "Install-", "Write-Host", "\$PSVersionTable")
    "python" = @("def ", "import ", "from ", "class ", "print(", "if __name__", "pip install")
    "javascript" = @("function ", "const ", "let ", "=>", "console.log", "require(", "module.exports")
    "typescript" = @("interface ", "type ", ": string", ": number", ": boolean", "<T>")
    "java" = @("public class", "private ", "protected ", "System.out", "public static void")
    "c" = @("#include <stdio", "#include <stdlib", "int main(", "printf(", "malloc(")
    "cpp" = @("#include <iostream", "#include <vector>", "std::", "cout <<", "cin >>")
    "lua" = @("function ", "local ", "require(", "table.insert", "pairs(")
    "sql" = @("SELECT ", "INSERT ", "UPDATE ", "DELETE ", "CREATE TABLE", "ALTER TABLE")
    "html" = @("<html", "<head>", "<body>", "<div>", "<script>", "<style>")
    "css" = @("{", "}", "color:", "background:", "margin:", "padding:", "display:")
    "vue" = @("<template>", "<script setup", "ref(", "reactive(", "computed(")
    "json" = @('"name":', '"version":', '"dependencies":')
    "yaml" = @("- name:", "version:", "dependencies:")
    "markdown" = @("# ", "## ", "- [", "```", "*italic*")
    "xml" = @("<?xml", "<!DOCTYPE", "<project", "<dependencies")
    "gradle" = @("apply plugin:", "dependencies {", "repositories {")
}

function Get-DetectedLanguage {
    param([string]$Content)

    $scores = @{}

    foreach ($lang in $LanguagePatterns.Keys) {
        $score = 0
        foreach ($pattern in $LanguagePatterns[$lang]) {
            if ($Content -match $pattern) {
                $score++
            }
        }
        if ($score -gt 0) {
            $scores[$lang] = $score
        }
    }

    if ($scores.Count -gt 0) {
        return ($scores.GetEnumerator() | Sort-Object Value -Descending | Select-Object -First 1).Key
    }

    return "text"
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Code Block Language Identifier Fixer" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if ($DryRun) {
    Write-Host "[DRY RUN MODE - No changes will be made]" -ForegroundColor Yellow
    Write-Host ""
}

$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and
    $_.FullName -notmatch '\\\.github\\' -and
    $_.FullName -notmatch '\\Renpydoc\\' -and
    $_.FullName -notmatch '\\Godotdoc\\'
}

Write-Host "Processing $($mdFiles.Count) markdown files..." -ForegroundColor Gray
Write-Host ""

foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $lines = $content -split "`r?`n"

    $newLines = @()
    $i = 0
    $modified = $false

    foreach ($line in $lines) {
        if ($line -match '^\x60\x60\x60\s*$' -or $line -match '^\x60\x60\x60[^a-zA-Z]') {
            # Found a code block start without language identifier
            $codeBlockContent = ""
            $j = $i + 1
            while ($j -lt $lines.Count -and $lines[$j] -notmatch '^\x60\x60\x60') {
                $codeBlockContent += $lines[$j] + "`n"
                $j++
            }

            $detectedLang = Get-DetectedLanguage -Content $codeBlockContent

            if ($Verbose -or $DryRun) {
                Write-Host "  Found empty code block in $($file.Name) at line $($i+1), detected: $detectedLang" -ForegroundColor Gray
            }

            if (-not $DryRun) {
                $newLines += "\x60\x60\x60$detectedLang"
                $modified = $true
                $FixedCount++
            }
        }
        else {
            $newLines += $line
        }
        $i++
    }

    if ($modified -and -not $DryRun) {
        $newContent = $newLines -join "`n"
        Write-FileUtf8NoBom -Path $file.FullName -Content $newContent
        Write-Host "[FIXED] $($file.Name)" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Results" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if ($DryRun) {
    Write-Host "Dry run completed. Run without -DryRun to apply changes." -ForegroundColor Yellow
}
else {
    Write-Host "Fixed $FixedCount code blocks." -ForegroundColor Green
}

Write-Host ""
