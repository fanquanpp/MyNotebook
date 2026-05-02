#!/usr/bin/env pwsh
#
# Document Quality Scoring System
# Evaluates completeness, encoding compliance, and link validity
#

param(
    [switch]$Fix,
    [switch]$Detailed,
    [string]$OutputFormat = "text"  # text, json, csv
)

$ErrorActionPreference = "Continue"

$utf8NoBom = New-Object System.Text.UTF8Encoding $false

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Document Quality Scoring System" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""

$projectRoot = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($MyInvocation.MyCommand.Path -match 'scripts') {
    $projectRoot = Split-Path -Parent (Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path))
}
Push-Location $projectRoot

$scores = @()
$totalScore = 0
$totalMaxScore = 0

Write-Host "[1/4] Scanning Markdown files..." -ForegroundColor Yellow
$mdFiles = Get-ChildItem -Recurse -Filter "*.md" | Where-Object {
    $_.FullName -notmatch '\\\.git\\' -and
    $_.FullName -notmatch '\\\.github\\' -and
    $_.FullName -notmatch '\\Renpydoc\\' -and
    $_.FullName -notmatch '\\Godotdoc\\' -and
    $_.FullName -notmatch '\\示例\\' -and
    $_.FullName -notmatch '\\算法与数据结构\\'
}
Write-Host "  Found $($mdFiles.Count) Markdown files" -ForegroundColor Gray
Write-Host ""

Write-Host "[2/4] Evaluating completeness scores..." -ForegroundColor Yellow

$completenessScores = @()
foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $fileName = $file.Name
    $score = 0
    $maxScore = 100
    $issues = @()

    # Check required sections (for README files)
    if ($fileName -eq "README.md") {
        # Metadata header
        if ($content -match '@(Author|Version|Created|Description):') {
            $score += 15
        } else {
            $issues += "Missing metadata header"
        }

        # Table of contents
        if ($content -match '## |### ') {
            $score += 15
        } else {
            $issues += "Missing table of contents"
        }

        # External resources section
        if ($content -match '\[[\w\s]+\]\(https?://') {
            $score += 10
        } else {
            $issues += "Missing external resources"
        }

        # Learning path or structure
        if ($content -match '学习|路径|path|learning|目录|index') {
            $score += 10
        } else {
            $issues += "Missing learning path"
        }

        # Examples or code blocks
        if ($content -match '```[\s\S]*?```') {
            $score += 10
        } else {
            $issues += "Missing code examples"
        }

        # Contribution guidelines
        if ($content -match '贡献|contribute|规则|guideline') {
            $score += 10
        } else {
            $issues += "Missing contribution info"
        }

        # Changelog
        if ($content -match '更新日志|changelog|change log') {
            $score += 10
        } else {
            $issues += "Missing changelog"
        }

        # License information
        if ($content -match '许可证|license|版权|copyright') {
            $score += 10
        } else {
            $issues += "Missing license info"
        }

        # Contact information
        if ($content -match '@|邮箱|email|联系') {
            $score += 10
        } else {
            $issues += "Missing contact info"
        }
    } else {
        # For regular notes

        # Has content (>200 chars)
        if ($content.Length -gt 200) {
            $score += 20
        } else {
            $issues += "Content too short"
        }

        # Has headings
        if ($content -match '^#{1,3}\s+\S') {
            $score += 15
        } else {
            $issues += "Missing headings"
        }

        # Has code blocks
        if ($content -match '```') {
            $score += 15
        } else {
            $issues += "Missing code examples"
        }

        # Has lists
        if ($content -match '^\s*[-*+]\s+\S|^\s*\d+\.\s+\S') {
            $score += 15
        } else {
            $issues += "Missing lists"
        }

        # Has emphasis/formatting
        if ($content -match '\*\*|__|\*|_|~~') {
            $score += 15
        } else {
            $issues += "Missing formatting"
        }

        # Has links
        if ($content -match '\[[^\]]+\]\([^\)]+\)') {
            $score += 20
        } else {
            $issues += "Missing links"
        }
    }

    $completenessScores += @{
        File = $file.FullName
        Score = $score
        MaxScore = $maxScore
        Issues = $issues
    }
}

$avgCompleteness = ($completenessScores | Measure-Object -Property Score -Average).Average
Write-Host "  Average completeness score: $([math]::Round($avgCompleteness, 2))/100" -ForegroundColor $(if ($avgCompleteness -ge 80) { "Green" } elseif ($avgCompleteness -ge 60) { "Yellow" } else { "Red" })
Write-Host ""

Write-Host "[3/4] Evaluating encoding compliance..." -ForegroundColor Yellow

$encodingScores = @()
foreach ($file in $mdFiles) {
    $score = 100
    $maxScore = 100
    $issues = @()

    # Check for BOM
    $bytes = [System.IO.File]::ReadAllBytes($file.FullName)
    if ($bytes.Length -ge 3 -and $bytes[0] -eq 0xEF -and $bytes[1] -eq 0xBB -and $bytes[2] -eq 0xBF) {
        $score -= 50
        $issues += "Has UTF-8 BOM"
    }

    # Check for garbled characters
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $garbledPatterns = @("ï¼", "ä¸", "é€", "å›", "ä»", "ä½", "æˆ", "åœ", "æ˜", "è¿", "æ–", "çš")
    foreach ($pattern in $garbledPatterns) {
        if ($content -match [regex]::Escape($pattern)) {
            $score -= 30
            $issues += "Contains garbled characters"
            break
        }
    }

    # Check line endings (CRLF vs LF)
    if ($content -match "`r`n") {
        $score -= 10
        $issues += "Uses CRLF line endings"
    }

    $encodingScores += @{
        File = $file.FullName
        Score = $score
        MaxScore = $maxScore
        Issues = $issues
    }
}

$avgEncoding = ($encodingScores | Measure-Object -Property Score -Average).Average
Write-Host "  Average encoding score: $([math]::Round($avgEncoding, 2))/100" -ForegroundColor $(if ($avgEncoding -ge 95) { "Green" } elseif ($avgEncoding -ge 80) { "Yellow" } else { "Red" })
Write-Host ""

Write-Host "[4/4] Evaluating link validity..." -ForegroundColor Yellow

$linkScores = @()
$brokenLinks = @()
$totalLinks = 0

foreach ($file in $mdFiles) {
    $content = [System.IO.File]::ReadAllText($file.FullName, $utf8NoBom)
    $score = 100
    $maxScore = 100
    $issues = @()

    # Find all markdown links
    $links = [regex]::Matches($content, '\[[^\]]+\]\(([^\)]+)\)')

    foreach ($link in $links) {
        $totalLinks++
        $url = $link.Groups[1].Value

        # Skip anchors and relative paths
        if ($url -match '^#' -or $url -match '^\.\.?/') {
            continue
        }

        # Check external links
        if ($url -match '^https?://') {
            # This would require Invoke-WebRequest which might be slow
            # For now, just check if URL format is valid
            if ($url -notmatch '^https?://[\w\-\.]+(\.[\w\-\.]+)+.*$') {
                $score -= 5
                $issues += "Invalid URL format: $url"
            }
        }

        # Check for common issues
        if ($url -match '^\s*$') {
            $score -= 10
            $issues += "Empty link"
        }
    }

    # Check for internal links to non-existent files
    $internalLinks = [regex]::Matches($content, '\]\(([\.\/]*[^\)]+\.md)\)')
    foreach ($link in $internalLinks) {
        $linkPath = $link.Groups[1].Value

        # Resolve relative path
        $resolvedPath = if ($linkPath -match '^\.\./') {
            Join-Path (Split-Path $file.FullName) $linkPath
        } elseif ($linkPath -match '^\.\/') {
            Join-Path (Split-Path $file.FullName) ($linkPath -replace '^\.\/', '')
        } else {
            Join-Path (Split-Path $file.FullName) $linkPath
        }

        # Normalize path separators
        $resolvedPath = $resolvedPath -replace '\\', '/'

        if (-not (Test-Path $resolvedPath)) {
            $score -= 15
            $brokenLinks += @{
                File = $file.FullName
                Link = $linkPath
                Resolved = $resolvedPath
            }
        }
    }

    $linkScores += @{
        File = $file.FullName
        Score = [Math]::Max(0, $score)
        MaxScore = $maxScore
        Issues = $issues
    }
}

$avgLinks = ($linkScores | Measure-Object -Property Score -Average).Average
Write-Host "  Average link score: $([math]::Round($avgLinks, 2))/100" -ForegroundColor $(if ($avgLinks -ge 95) { "Green" } elseif ($avgLinks -ge 80) { "Yellow" } else { "Red" })
Write-Host "  Total links checked: $totalLinks" -ForegroundColor Gray
Write-Host "  Broken internal links: $($brokenLinks.Count)" -ForegroundColor $(if ($brokenLinks.Count -eq 0) { "Green" } else { "Red" })
Write-Host ""

# Calculate overall score
$overallScore = ($avgCompleteness * 0.5) + ($avgEncoding * 0.3) + ($avgLinks * 0.2)
$totalScore = $overallScore
$totalMaxScore = 100

Write-Host "==============================================" -ForegroundColor Cyan
Write-Host "Overall Quality Score" -ForegroundColor Cyan
Write-Host "==============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "  Completeness: $([math]::Round($avgCompleteness, 2))/100 (50%)" -ForegroundColor $(if ($avgCompleteness -ge 80) { "Green" } elseif ($avgCompleteness -ge 60) { "Yellow" } else { "Red" })
Write-Host "  Encoding:      $([math]::Round($avgEncoding, 2))/100 (30%)" -ForegroundColor $(if ($avgEncoding -ge 95) { "Green" } elseif ($avgEncoding -ge 80) { "Yellow" } else { "Red" })
Write-Host "  Links:         $([math]::Round($avgLinks, 2))/100 (20%)" -ForegroundColor $(if ($avgLinks -ge 95) { "Green" } elseif ($avgLinks -ge 80) { "Yellow" } else { "Red" })
Write-Host "  ----------------------------------------" -ForegroundColor Gray
Write-Host "  OVERALL:       $([math]::Round($overallScore, 2))/100" -ForegroundColor $(if ($overallScore -ge 80) { "Green" } elseif ($overallScore -ge 60) { "Yellow" } else { "Red" })
Write-Host ""

if ($Detailed) {
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host "Detailed Issues Report" -ForegroundColor Cyan
    Write-Host "==============================================" -ForegroundColor Cyan
    Write-Host ""

    # Show files with lowest completeness scores
    Write-Host "Bottom 10 Completeness Scores:" -ForegroundColor Yellow
    $worstCompleteness = $completenessScores | Sort-Object Score | Select-Object -First 10
    foreach ($item in $worstCompleteness) {
        $relPath = $item.File -replace [regex]::Escape($projectRoot), '.'
        Write-Host "  $relPath : $($item.Score)/$($item.MaxScore)" -ForegroundColor Red
        if ($item.Issues.Count -gt 0) {
            foreach ($issue in $item.Issues) {
                Write-Host "    - $issue" -ForegroundColor Gray
            }
        }
    }
    Write-Host ""

    # Show files with encoding issues
    Write-Host "Files with Encoding Issues:" -ForegroundColor Yellow
    $encodingIssues = $encodingScores | Where-Object { $_.Score -lt 100 }
    if ($encodingIssues.Count -gt 0) {
        foreach ($item in $encodingIssues) {
            $relPath = $item.File -replace [regex]::Escape($projectRoot), '.'
            Write-Host "  $relPath : $($item.Score)/$($item.MaxScore)" -ForegroundColor Red
            foreach ($issue in $item.Issues) {
                Write-Host "    - $issue" -ForegroundColor Gray
            }
        }
    } else {
        Write-Host "  No encoding issues found!" -ForegroundColor Green
    }
    Write-Host ""

    # Show broken links
    if ($brokenLinks.Count -gt 0) {
        Write-Host "Broken Internal Links:" -ForegroundColor Yellow
        foreach ($link in $brokenLinks | Select-Object -First 20) {
            $relPath = $link.File -replace [regex]::Escape($projectRoot), '.'
            Write-Host "  $relPath" -ForegroundColor Red
            Write-Host "    -> $($link.Link)" -ForegroundColor Gray
        }
    }
}

Write-Host ""
Write-Host "Scoring completed at $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')" -ForegroundColor Gray
Write-Host ""

Pop-Location

# Return exit code based on score
if ($overallScore -ge 80) {
    exit 0
} elseif ($overallScore -ge 60) {
    exit 0
} else {
    exit 1
}