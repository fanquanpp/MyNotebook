#!/usr/bin/env python3

import os

base_path = r'c:\Apan\Projects\Notebook'

folder_config = {
    '01-Github': {'name': 'GitHub', 'file': 'V_01-GitHub名词注释查阅表.md'},
    '02-C语言': {'name': 'C语言', 'file': 'V_02-C语言名词注释查阅表.md'},
    '03-Python': {'name': 'Python', 'file': 'V_03-Python名词注释查阅表.md'},
    '04-Java': {'name': 'Java', 'file': 'V_04-Java名词注释查阅表.md'},
    '05-HTML5': {'name': 'HTML5', 'file': 'V_05-HTML5名词注释查阅表.md'},
    '06-CSS': {'name': 'CSS', 'file': 'V_06-CSS名词注释查阅表.md'},
    '07-Git': {'name': 'Git', 'file': 'V_07-Git名词注释查阅表.md'},
    '08-Javascript': {'name': 'JavaScript', 'file': 'V_08-JavaScript名词注释查阅表.md'},
    '09-Markdown': {'name': 'Markdown', 'file': 'V_09-Markdown名词注释查阅表.md'},
    '10-MySQL': {'name': 'MySQL', 'file': 'V_10-MySQL名词注释查阅表.md'},
    '11-Typescript': {'name': 'TypeScript', 'file': 'V_11-TypeScript名词注释查阅表.md'},
    '12-Vue3': {'name': 'Vue3', 'file': 'V_12-Vue3名词注释查阅表.md'},
    '13-C++': {'name': 'C++', 'file': 'V_13-C++名词注释查阅表.md'},
    '14-Lua': {'name': 'Lua', 'file': 'V_14-Lua名词注释查阅表.md'},
    '15-Godot': {'name': 'Godot', 'file': 'V_15-Godot名词注释查阅表.md'},
    '16-Renpy': {"name": "Ren'Py", 'file': "V_16-Ren'Py名词注释查阅表.md"},
}

def update_readme(folder_name, config):
    readme_path = os.path.join(base_path, folder_name, 'README.md')
    
    if not os.path.exists(readme_path):
        print(f'跳过：{folder_name} 没有README.md')
        return
    
    with open(readme_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    glossary_link = f'- [{config["file"]}](./{config["file"]})'
    
    if glossary_link in content:
        content = content.replace(glossary_link, '')
        content = content.replace('\n\n\n', '\n\n')
    
    lines = content.split('\n')
    new_lines = []
    
    for i, line in enumerate(lines):
        new_lines.append(line)
        
        if '### 基础篇' in line and i+1 < len(lines):
            new_lines.append(glossary_link)
            if lines[i+1].strip() != '' and not lines[i+1].startswith('- ['):
                new_lines.append('')
    
    content = '\n'.join(new_lines)
    
    with open(readme_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f'更新完成：{folder_name}')

for folder_name, config in folder_config.items():
    update_readme(folder_name, config)

print('\n所有README更新完成！')
