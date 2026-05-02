#!/bin/bash

# sync_version.sh - 同步所有模块 README 版本号
# 用法: ./sync_version.sh <新版本号>
# 示例: ./sync_version.sh v3.6.0

set -e

if [ -z "$1" ]; then
    echo "错误: 请提供版本号"
    echo "用法: $0 <新版本号>"
    echo "示例: $0 v3.6.0"
    exit 1
fi

NEW_VERSION="$1"
ROOT_README="README.md"

echo "=========================================="
echo "MyNotebook 版本同步工具"
echo "=========================================="
echo "新版本: $NEW_VERSION"
echo ""

# 检查根目录 README 是否存在
if [ ! -f "$ROOT_README" ]; then
    echo "错误: 根目录 $ROOT_README 不存在"
    exit 1
fi

# 更新根目录 README 版本号
echo "[1/3] 更新根目录 README 版本号..."
sed -i.bak "s/@Version: v[0-9]\+\.[0-9]\+\.[0-9]\+/@Version: $NEW_VERSION/" "$ROOT_README"
rm -f "$ROOT_README.bak"
echo "✓ 根目录 README 已更新"

# 获取模块列表
MODULES=$(find . -maxdepth 1 -type d -name "[0-9][0-9]-*" | sort)

# 更新每个模块的 README 版本号
echo "[2/3] 更新模块 README 版本号..."
UPDATED_COUNT=0
for module in $MODULES; do
    readme="$module/README.md"
    if [ -f "$readme" ]; then
        # 检查是否有 @Version 标记
        if grep -q "@Version:" "$readme"; then
            sed -i.bak "s/@Version: v[0-9]\+\.[0-9]\+\.[0-9]\+/@Version: $NEW_VERSION/" "$readme"
            rm -f "$readme.bak"
            echo "  ✓ $(basename $module)"
            UPDATED_COUNT=$((UPDATED_COUNT + 1))
        fi
    fi
done
echo "✓ 已更新 $UPDATED_COUNT 个模块"

# 更新更新日志
echo "[3/3] 更新更新日志..."
TODAY=$(date +%Y-%m-%d)
sed -i.bak "s/- \*\*${TODAY}\*\*$/- **${TODAY**/\" $ROOT_README 2>/dev/null || true
rm -f "$ROOT_README.bak" 2>/dev/null || true

echo ""
echo "=========================================="
echo "版本同步完成！"
echo "=========================================="
echo "所有模块版本号已更新为: $NEW_VERSION"
echo ""
echo "下一步:"
echo "  1. 提交更改: git add . && git commit -m '版本同步到 $NEW_VERSION'"
echo "  2. 推送更新: git push"
echo ""
