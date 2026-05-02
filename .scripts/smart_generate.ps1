#!/usr/bin/env pwsh
#
# Smart Content Generator
# Auto-generates table of contents, glossary entries, and formats code
#

param(
    [Parameter(Mandatory=$true)]
    [string]$Command,
    [string]$File,
    [switch]$All
)

$ErrorActionPreference = "Continue"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Smart Content Generator" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($MyInvocation.MyCommand.Path -match 'scripts') {
    $projectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path))
}
Push-Location $projectRoot

switch ($Command) {
    "toc" {
        if (-not $File) {
            Write-Host "Error: -File parameter required" -ForegroundColor Red
            return
        }

        if (-not (Test-Path $File)) {
            Write-Host "Error: File not found: $File" -ForegroundColor Red
            return
        }

        Write-Host "Generating Table of Contents for: $File" -ForegroundColor Yellow
        Write-Host ""

        $content = [System.IO.File]::ReadAllText($File, $utf8NoBom)

        # Extract all headings
        $headings = @()
        $lines = $content -split "`n"
        $lineNum = 0

        foreach ($line in $lines) {
            $lineNum++
            if ($line -match '^(#{1,6})\s+(.+)$') {
                $level = $matches[1].Length
                $title = $matches[2].Trim()

                # Generate anchor
                $anchor = $title -replace '[^\w\u4e00-\u9fff]+', '-' -replace '^-|-$', ''
                $anchor = $anchor.ToLower()

                $headings += @{
                    Level = $level
                    Title = $title
                    Anchor = $anchor
                    Line = $lineNum
                }
            }
        }

        # Generate TOC
        $tocContent = "## 目录索引`n`n"
        $currentLevel = 0

        foreach ($heading in $headings) {
            $indent = "  " * ($heading.Level - 1)
            $bullet = if ($heading.Level -eq 1) { "###" } elseif ($heading.Level -eq 2) { "- **" } else { "  -" }
            $suffix = if ($heading.Level -eq 1) { "" } elseif ($heading.Level -eq 2) { "**" } else { "" }

            if ($heading.Level -eq 1) {
                $tocContent += "$bullet $($heading.Title)`n`n"
            } elseif ($heading.Level -eq 2) {
                $tocContent += "$indent$bullet[$($heading.Title)](#$($heading.Anchor))$suffix`n"
            } else {
                $tocContent += "$indent$bullet [$($heading.Title)](#$($heading.Anchor))`n"
            }
        }

        Write-Host "Generated TOC:" -ForegroundColor Green
        Write-Host $tocContent

        # Check if file already has TOC
        if ($content -match '(?s)## 目录索引.*?(?=## |$)') {
            Write-Host ""
            Write-Host "File already has a TOC. Use -Force to replace." -ForegroundColor Yellow
        } else {
            # Insert TOC after metadata
            if ($content -match '(\A#.*?\n\n)') {
                $newContent = $content -replace '(\A#.*?\n\n)', ("`$1" + $tocContent + "`n")
                [System.IO.File]::WriteAllText($File, $newContent, $utf8NoBom)
                Write-Host ""
                Write-Host "TOC inserted successfully!" -ForegroundColor Green
            }
        }
    }

    "glossary" {
        Write-Host "Generating Glossary Entries..." -ForegroundColor Yellow
        Write-Host ""

        # Scan all markdown files for potential glossary terms
        $mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
            $_.FullName -notmatch '\\\.git\\' -and
            $_.FullName -notmatch '\\\.github\\' -and
            $_.FullName -notmatch '\\Renpydoc\\' -and
            $_.FullName -notmatch '\\Godotdoc\\' -and
            $_.Name -ne "README.md"
        }

        # Common technical terms to look for
        $commonTerms = @(
            "API", "CLI", "GUI", "IDE", "JSON", "XML", "HTML", "CSS", "SQL",
            "Git", "HTTP", "HTTPS", "REST", "URL", "URI", "DNS", "TCP", "UDP",
            "JWT", "OAuth", "SSH", "TLS", "SSL", "Markdown", "YAML", "TOML",
            "Python", "Java", "JavaScript", "TypeScript", "C++", "Ruby", "Go",
            "Rust", "PHP", "Swift", "Kotlin", "Scala", "Perl", "Lua"
        )

        $termDefinitions = @{}
        $termSources = @{}

        foreach ($file in $mdFiles) {
            $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)

            # Look for term definitions (bold or code formatting at start of line)
            foreach ($term in $commonTerms) {
                $pattern = "(?:^|\n)(?:\*\*$term\*\*|:?\s*`$term`)\s*[-—:]\s*(.+?)(?:\n|$)"
                if ($content -match $pattern) {
                    $definition = $matches[1].Trim()
                    if (-not $termDefinitions.ContainsKey($term)) {
                        $termDefinitions[$term] = $definition
                        $termSources[$term] = $file.Name
                    }
                }
            }

            # Look for code-like terms
            $codeTerms = [regex]::Matches($content, '(?<=\n)[A-Z]{2,6}(?:\s+\d+(?:\.\d+)*)?\s*[-—:]?\s*(?:is|means|refers to|表示|是|指)[:\s]+(.+?)(?:\n|$)')
            foreach ($match in $codeTerms) {
                $term = $match.Value.Trim()
                $definition = $match.Groups[1].Value.Trim()
                if ($term.Length -lt 30 -and $definition.Length -lt 200) {
                    if (-not $termDefinitions.ContainsKey($term)) {
                        $termDefinitions[$term] = $definition
                        $termSources[$term] = $file.Name
                    }
                }
            }
        }

        # Generate glossary
        $glossary = @"
## 名词解释 | Glossary

> 本名词解释表由自动生成工具扫描所有模块文档提取

---

### 技术术语

"@

        $sortedTerms = $termDefinitions.GetEnumerator() | Sort-Object Name

        foreach ($term in $sortedTerms) {
            $glossary += "`n**$($term.Key)**`n"
            $glossary += "- 定义: $($term.Value)`n"
            $glossary += "- 来源: $($termSources[$term.Key])`n"
        }

        Write-Host "Generated $($termDefinitions.Count) glossary entries" -ForegroundColor Green
        Write-Host ""
        Write-Host "Sample output:" -ForegroundColor Gray
        Write-Host ($glossary | Select-Object -First 20)
    }

    "format-code" {
        if (-not $File) {
            Write-Host "Error: -File parameter required" -ForegroundColor Red
            return
        }

        if (-not (Test-Path $File)) {
            Write-Host "Error: File not found: $File" -ForegroundColor Red
            return
        }

        Write-Host "Formatting code blocks in: $File" -ForegroundColor Yellow
        Write-Host ""

        $content = [System.IO.File]::ReadAllText($File, $utf8NoBom)
        $originalContent = $content

        # Ensure code blocks have language specification
        $content = $content -replace '```\s*\n', '```markdown`n'

        # Fix indentation in code blocks
        $lines = $content -split "`n"
        $inCodeBlock = $false
        $codeBlockStart = 0

        for ($i = 0; $i -lt $lines.Length; $i++) {
            $line = $lines[$i]

            if ($line -match '^```') {
                if ($inCodeBlock) {
                    $inCodeBlock = $false
                } else {
                    $inCodeBlock = $true
                    $codeBlockStart = $i
                }
            }

            # Ensure consistent indentation (4 spaces for code)
            if ($inCodeBlock -and $line -match '^\s{1,3}\S') {
                $leadingSpaces = $line -match '^\s+'
                if ($leadingSpaces) {
                    $spaces = ($line | Select-String '^\s+' -AllMatches).Matches[0].Value
                    if ($spaces.Length % 4 -ne 0) {
                        # Adjust to nearest 4
                        $newSpaces = [math]::Round($spaces.Length / 4) * 4
                        $lines[$i] = (" " * $newSpaces) + $line.TrimStart()
                    }
                }
            }
        }

        $content = $lines -join "`n"

        if ($content -ne $originalContent) {
            [System.IO.File]::WriteAllText($File, $content, $utf8NoBom)
            Write-Host "Code formatting applied!" -ForegroundColor Green
        } else {
            Write-Host "No formatting changes needed." -ForegroundColor Gray
        }
    }

    default {
        Write-Host "Available commands:" -ForegroundColor White
        Write-Host "  toc          Generate table of contents for a file" -ForegroundColor Gray
        Write-Host "  glossary     Auto-generate glossary entries" -ForegroundColor Gray
        Write-Host "  format-code  Format code blocks in a file" -ForegroundColor Gray
        Write-Host ""
        Write-Host "Usage:" -ForegroundColor White
        Write-Host "  .\smart_generate.ps1 -Command toc -File <path>" -ForegroundColor Gray
        Write-Host "  .\smart_generate.ps1 -Command glossary" -ForegroundColor Gray
        Write-Host "  .\smart_generate.ps1 -Command format-code -File <path>" -ForegroundColor Gray
    }
}

Pop-Location
Write-Host ""