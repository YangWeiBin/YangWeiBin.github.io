# 022-Markdown-通过链接打开文件夹  
---
## 1 借助file:///   
- [示例代码目录](file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/src/)     
- [示例代码目录1][1]   
- <a href="#1">Link to 1</a>

## 2 借助a href   
- <a href="file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/src/">示例代码目录</a>   

## 3 借助html文件  
[示例代码目录](./023-代码目录测试022.html)    

## 4 可以直接复制到地址栏  
file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/C++-GUI-Qt4-src/   

## 5 总结  

1. 在github中无法点击超链接打开本地目录    
2. 在本地和github都无法使用相对路径    
3. github打开html，但是需要加上<https://yangweibin.github.io/>才能预览   
  - https://yangweibin.github.io/GithubStudy/023-代码目录测试022.html   
  - 但是github只能预览效果， 依旧不能打开文件目录   
4. 推荐使用借助`file:///`在本地使用，为了兼容github可以再将链接保留备份，用于拷贝地址栏   
5. 使用`[][]`引用在github不支持显示file链接   
## 6 推荐写法

- [代码目录](file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/C++-GUI-Qt4-src/)<a href="#1">[1]</a>   


## 7 参考网址

1. <https://bbs.csdn.net/topics/392209456>   
2. https://blog.csdn.net/tiokld/article/details/41694049  
3. https://www.jianshu.com/p/2dc509d5cc82     


## 8 引用列表  
<a name="1"></a> [1] file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/   
<a name="2"></a> file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/   
<a name="3"></a> [3] `file:///f:/2019-2020-2nd-semester/03-beijing-interview/01-qtcreator/ `    


