#!/bin/bash

# 一键验证脚本 | One-click Verification Script
# 功能: 调用 Python 脚本检查代码规范、命名与头部模板
# Function: Call Python script to check code standards, naming, and header templates

# 获取脚本所在目录 | Get script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
PROJECT_ROOT="$(dirname "$(dirname "$SCRIPT_DIR")")"

# 切换到项目根目录运行验证 | Run verification from project root
cd "$PROJECT_ROOT"

python3 meta/scripts/verify.py || python meta/scripts/verify.py
