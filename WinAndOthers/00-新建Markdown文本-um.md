# [Ramses Composer文档](./)  [img](./img)     

> ######  _标签:_   ![](https://img.shields.io/badge/技术类-yellowgreen.svg) ![](https://img.shields.io/badge/Ramses Composer-用户手册-blue.svg) [![](https://img.shields.io/badge/链接-Ramses Composer文档-brightgreen.svg)](https://github.com/COVESA/ramses-composer-docs/) [![](https://img.shields.io/badge/链接-代码文件-orange.svg)](../02-code/)     
>

[toc]  

此存储库包含 Ramses Composer 的文档，这是开源 RAMSES 渲染生态系统的创作工具。  

## 基本  
这些教程介绍了 Composer 的基本功能，以及如何导入、管理、修改和导出数据。  

序号|名称|本地|内容
:-:|:-:|:-:|-
1|[简介](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/introduction/README.md) |-| 这个 Ramses Composer 到底有什么用？  
2|[第一个基本项目](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/hello_world/README.md) |-| 一个简单的立方体。  
3|[一个更有趣的项目](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/monkey/README.md)|-|一个带有平面阴影的猴头。  
4|[数据和范围](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/data_and_scopes/README.md) |-| 有关对象类型、数据和范围的详细信息。   
5|[Exporting to Ramses](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/export/README.md) |-|导出优化的 Ramses 二进制资产。  
6|[Prefabs 简介](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/prefabs/README.md) |-|这个例子展示了如何使用 Prefab 机制创建封装的、可重用的对象。   
7|[约定](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/conventions/README.md) |-| 坐标系和导入细节。   
8|[Scripting with LUA](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/lua_syntax/README.md) |-| 额外的 Lua 脚本技巧。  
9|[渲染顺序](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/ordering/README.md) |-| 控制渲染顺序。   
10|[屏幕外渲染](https://github.com/COVESA/ramses-composer-docs/blob/master/basics/offscreen/README.md) |-| 屏幕外渲染。  

## 先进的  
序号|名称|本地|内容
:-:|:-:|:-:|-
1|[Modules](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/modules/README.md) |-| 通过使用模块重用 Lua 代码。  
2|[复杂导入](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/complex_import/README.md) |-| 从单个 glTF 文件导入多个对象。  
3|[Animations](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/animations/README.md)|-| 从 glTF 导入和控制动画。   
4|[嵌套预制件](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/nested_prefabs/README.md) |-| 演示如何使用其他预制件作为构建块来构建复杂的预制件。  
5|[外部参考](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/external_references/README.md) |-| 说明如何导入和使用来自不同项目的构建块。  
6|[最佳实践](https://github.com/COVESA/ramses-composer-docs/blob/master/advanced/best_practices/README.md) |-| 建议项目结构的最佳实践。  

## 故障排除   
序号|名称|本地|内容
:-:|:-:|:-:|-
1|[版本](https://github.com/COVESA/ramses-composer-docs/blob/master/debugging/versions/README.md) |-| 支持的版本、API 和 ABI 兼容性。   
2|[使用日志输出控制台](https://github.com/COVESA/ramses-composer-docs/blob/master/debugging/using_log_console/README.md) |-|
3|[常见问题](https://github.com/COVESA/ramses-composer-docs/blob/master/debugging/common_issues/README.md)  |-|
4|[崩溃转储](https://github.com/COVESA/ramses-composer-docs/blob/master/debugging/crash_dumps/README.md) |-|

## 相关资源  
您将在 [Ramses Composer 主存储库](https://github.com/COVESA/ramses-composer)中找到 Ramses Composer 的源代码以及如何构建它的说明。有关 Ramses 生态系统及其其他组件的一般概述，请访问[这些页面](https://ramses-sdk.readthedocs.io/)。  

## 执照  
与 Ramses Composer 一样，该文档也是在 MPL-2.0 许可下发布的。一些示例 glTF 资产取自官方 Khronos 存储库 - 相应的示例项目在其各自的 README.md 文档中提到了源和许可证信息。一些示例项目包含自定义 Blender 文件。这些文件也是在 MPL-2.0 许可下发布的。