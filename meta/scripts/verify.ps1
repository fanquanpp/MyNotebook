# 一键验证脚本 | One-click Verification Script (PowerShell)
# 功能: 调用 Python 脚本检查代码规范、命名与头部模板
# Function: Call Python script to check code standards, naming, and header templates

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Split-Path -Parent (Split-Path -Parent $ScriptDir)

# 切换到项目根目录运行验证 | Run verification from project root
Set-Location $ProjectRoot

$pythonCmd = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" } else { "python" }
Invoke-Expression "$pythonCmd meta/scripts/verify.py"
