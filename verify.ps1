$pythonCmd = if (Get-Command python3 -ErrorAction SilentlyContinue) { "python3" } else { "python" }
Invoke-Expression "$pythonCmd verify.py"
