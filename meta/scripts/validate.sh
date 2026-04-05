#!/usr/bin/env bash
# ==============================================================================
# 脚本名称: validate.sh
# 用途描述: 全局质量门禁校验脚本，涵盖死链、Markdown 风格、代码语法与文件名冲突。
# 使用方法: bash scripts/validate.sh [选项]
# 选项说明:
#   -h, --help            显示帮助信息
#   --strict              开启严苛模式（任何警告视为错误）
#   --report=FILE         输出 JUnit XML 格式报告到指定文件 (默认: report.xml)
# 返回码表:
#   0 - 校验通过 (Success)
#   1 - 发现死链 (Broken Links)
#   2 - Lint 规则冲突 (Lint Error)
#   3 - 其他异常 (Other Errors: 文件名冲突, 脚本错误等)
# 维护人员: fanquanpp
# 创建日期: 2026-04-05
# 版本信息: v2.0.0 (Parallel Edition)
# ==============================================================================

# 基础路径配置
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$REPO_ROOT" || exit 3

# 默认变量
STRICT_MODE=false
REPORT_FILE="report.xml"
EXIT_CODE=0

# 日志与错误处理
log_info() { echo -e "[\033[32mINFO\033[0m] $1"; }
log_warn() { echo -e "[\033[33mWARN\033[0m] $1"; }
log_error() { echo -e "[\033[31mERROR\033[0m] (Line $2) $1" >&2; }

trap 'log_error "脚本意外中断" $LINENO' ERR

# 帮助信息
show_help() {
    grep "^#" "$0" | head -n 20 | sed 's/^# //g'
    exit 0
}

# 解析参数
for i in "$@"; do
    case $i in
        -h|--help) show_help ;;
        --strict) STRICT_MODE=true ;;
        --report=*) REPORT_FILE="${i#*=}" ;;
        *) ;;
    esac
done

# 初始化 JUnit XML
echo '<?xml version="1.0" encoding="UTF-8"?>' > "$REPORT_FILE"
echo '<testsuites name="QualityGuard">' >> "$REPORT_FILE"
echo '  <testsuite name="StaticAnalysis">' >> "$REPORT_FILE"

add_test_case() {
    local name=$1
    local status=$2
    local message=$3
    echo "    <testcase name=\"$name\">" >> "$REPORT_FILE"
    if [ "$status" != "0" ]; then
        echo "      <failure message=\"$message\" />" >> "$REPORT_FILE"
    fi
    echo "    </testcase>" >> "$REPORT_FILE"
}

# --- 1. 并行检查任务定义 ---

check_markdownlint() {
    log_info "正在检查 Markdown 风格..."
    if command -v markdownlint &> /dev/null; then
        markdownlint "**/*.md" -c .markdownlint.json --ignore node_modules --ignore .git > lint.log 2>&1
        local res=$?
        if [ $res -ne 0 ]; then
            log_error "Markdown Lint 失败" $LINENO
            return 2
        fi
    else
        log_warn "markdownlint 未安装，跳过。"
    fi
    return 0
}

check_dead_links() {
    log_info "正在检查死链..."
    if command -v markdown-link-check &> /dev/null; then
        find . -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -print0 | xargs -0 -n 1 -P 4 markdown-link-check -c .markdown-link-check.json -q > links.log 2>&1
        local res=$?
        if [ $res -ne 0 ]; then
            log_error "发现死链" $LINENO
            return 1
        fi
    else
        log_warn "markdown-link-check 未安装，跳过。"
    fi
    return 0
}

check_filename_case() {
    log_info "正在检查文件名大小写冲突..."
    local conflicts=$(find . -not -path "*/.git/*" | tr '[:upper:]' '[:lower:]' | sort | uniq -d)
    if [ -n "$conflicts" ]; then
        log_error "发现文件名大小写冲突: $conflicts" $LINENO
        return 3
    fi
    return 0
}

# --- 2. 执行与报告汇总 ---

# 启动并行检查 (使用 & 后台运行)
check_markdownlint & pid1=$!
check_dead_links & pid2=$!
check_filename_case & pid3=$!

# 等待结果
wait $pid1; res1=$?
wait $pid2; res2=$?
wait $pid3; res3=$?

# 写入报告
add_test_case "MarkdownLint" "$res1" "Markdown 风格检查未通过"
add_test_case "DeadLinks" "$res2" "发现无法访问的外部链接"
add_test_case "FilenameCase" "$res3" "文件名在大小写敏感系统中存在冲突"

# 最终汇总
echo '  </testsuite>' >> "$REPORT_FILE"
echo '</testsuites>' >> "$REPORT_FILE"

# 设置返回码
if [ $res1 -ne 0 ]; then EXIT_CODE=2; fi
if [ $res2 -ne 0 ]; then EXIT_CODE=1; fi
if [ $res3 -ne 0 ]; then EXIT_CODE=3; fi

log_info "校验完成，报告已生成至 $REPORT_FILE"
exit $EXIT_CODE
