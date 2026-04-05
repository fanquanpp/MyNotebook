import os
import re

# 颜色定义 | Color definitions
GREEN = '\033[92m'
RED = '\033[91m'
YELLOW = '\033[93m'
RESET = '\033[0m'

def check_file_naming(filename):
    """
    检查文件名是否符合规范 (算法英文名_语言缩写.后缀) | Check if filename follows convention
    """
    # 允许常见的文件名
    if filename in ["package.json", "Makefile", "README.md", "index.md", "knowledge_pitfalls.md"]:
        return True
    
    # 正则匹配：小写、下划线、语言缩写
    pattern = r'^[a-z0-9_]+_[a-z0-9]+\.[a-z0-9]+$'
    return bool(re.match(pattern, filename))

def check_header(content):
    """
    检查头部模板是否存在 | Check if header template exists
    """
    required_fields = ["@Author", "@Algorithm", "@Language", "@Time Compl.", "@Description", "@Teaching"]
    return all(field in content for field in required_fields)

def check_bilingual(content):
    """
    简单检查是否包含中英双语 (包含中文及常见英文关键词) | Basic bilingual check
    """
    has_chinese = bool(re.search(r'[\u4e00-\u9fa5]', content))
    # 简单检查是否有英文解释 (这里只是模糊匹配)
    has_english = bool(re.search(r'\|\s*[A-Za-z]', content))
    return has_chinese and has_english

def verify_repo():
    print(f"{YELLOW}>>> 正在执行知识库自动化验证... (Running Repository Verification...){RESET}")
    
    total_files = 0
    passed_files = 0
    errors = []

    for root, dirs, files in os.walk("."):
        # 忽略 meta 目录、隐藏目录及根目录下的脚本
        if any(x in root for x in ["meta", ".git", "node_modules"]) or root == ".":
            continue
            
        for file in files:
            if file.endswith((".py", ".cpp", ".java", ".gd", ".js", ".ts", ".html")):
                total_files += 1
                file_path = os.path.join(root, file)
                
                try:
                    with open(file_path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        
                    # 1. 检查命名规范
                    if not check_file_naming(file):
                        errors.append(f"命名规范不符 (Naming): {file_path}")
                        continue
                    
                    # 2. 检查头部模板
                    if not check_header(content):
                        errors.append(f"头部模板缺失 (Header): {file_path}")
                        continue
                    
                    # 3. 检查双语注释
                    if not check_bilingual(content):
                        errors.append(f"双语注释缺失 (Bilingual): {file_path}")
                        continue
                        
                    passed_files += 1
                except Exception as e:
                    errors.append(f"读取失败 (Read Error): {file_path} - {str(e)}")

    # 结果统计 | Stats
    print("\n" + "="*50)
    print(f"总计检查源码文件: {total_files}")
    print(f"通过验证: {GREEN}{passed_files}{RESET}")
    print(f"失败项: {RED}{len(errors)}{RESET}")
    
    if errors:
        print("\n错误清单 | Error List:")
        for error in errors:
            print(f"- {error}")
    else:
        print(f"\n{GREEN}验证通过！所有文件符合规范。 (All files pass!){RESET}")

if __name__ == "__main__":
    verify_repo()
