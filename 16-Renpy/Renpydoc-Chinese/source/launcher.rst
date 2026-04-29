.. _launcher:

========
启动器
========

Ren'Py启动器的内容分布在文档的其他地方。
本页面仅收集其他各处没有的信息。

.. _project-folders:

项目文件夹
----------

启动器支持从文件夹读取项目。创作者可以在某个项目目录中再建立一个文件夹，并将项目文件移动到该文件夹中。
在启动器界面点击“刷新”即可在项目列表中看到对应项目。
但启动器只支持多这一层文件夹，如果刚才的文件夹里再套娃文件夹会检索不到项目信息。

点击启动器的项目名称可以展开或折叠文件夹。

.. warning::

    Currently, the Ren'Py launcher only supports one project with a given name. So it's not
    possible to have the same project name in different folders.

Projects.txt
------------

若项目目录中存在名为 ``projects.txt``，其内容为项目文件的完整路径列表。
文件中的所有路径都会在出现在启动器界面中。

.. _no-launcher-links:

启动器无外部链接
-----------------

如果Ren'Py自身的基目录(即renpy.exe、renpy.sh和renpy.app所在目录)中存在一个名为 ``no_launcher_links.txt`` 的文件，
启动器将禁用跳转到 renpy.org 的链接。该功能是考虑到教育或学校、家庭等场景，防止未成年用户浏览成人网站赞助内容。