# 一键验证脚本 | One-click Verification Script (PowerShell)
# 功能: 调用 Python 脚本检查代码规范、命名与头部模板
# Function: Call Python script to check code standards, naming, and header templates

$pythonCmd = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" } else { "python" }
Invoke-Expression "$pythonCmd verify.py"
