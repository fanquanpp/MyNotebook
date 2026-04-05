# 一键验证脚本 | One-click Verification Script (PowerShell)
# 功能: 调用 Python 脚本检查代码规范、命名与头部模板
# Function: Call Python script to check code standards, naming, and header templates

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Split-Path -Parent (Split-Path -Parent $ScriptDir)

# 切换到项目根目录运行验证 | Run verification from project root
Set-Location $ProjectRoot

$pythonExe = $null
$pythonArgs = @()

if (Get-Command python3 -ErrorAction SilentlyContinue) {
    $pythonExe = "python3"
} elseif (Get-Command python -ErrorAction SilentlyContinue) {
    $pythonExe = "python"
} elseif (Get-Command py -ErrorAction SilentlyContinue) {
    $pythonExe = "py"
    $pythonArgs = @("-3")
}

if (-not $pythonExe) {
    Write-Error "Python not found. Please install Python 3.x or enable the 'py' launcher, then re-run: ./meta/scripts/verify.ps1"
    exit 1
}

& $pythonExe @pythonArgs "meta/scripts/verify.py"
