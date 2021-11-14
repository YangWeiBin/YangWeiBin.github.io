# [UOS安装code命令配置环境变量](./)  [img](./img)     

> ######  _标签:_   ![](https://img.shields.io/badge/技术类-yellowgreen.svg) ![](https://img.shields.io/badge/软件安装-VSCode-blue.svg)  [![](https://img.shields.io/badge/链接-配置环境变量三种方法-orange.svg)](https://www.cnblogs.com/jpfss/p/6560703.html)   
>

## 1 概述   

通过应用商城安装VScode时，常常遇到无法在终端使用对应的命令，这时候需要配置相应的环境变量，才能正常的使用，下面针对VScode进行讲解。  

## 2 环境变量

### 2.1 全局区  

对于所有的用户都起作用。使用别名无效。

```shell
 sudo dedit /etc/profile
 # VSCode 环境变量
export VSCODE_HOME=/opt/apps/com.visualstudio.code
export PATH=$PATH:$VSCODE_HOME/files/code   
```

上面的**引号千万不要丢，否则可能导致无法进入桌面的问题**，引号是追加的意思。

### 2.2 用户区  

针对固定的用户起作用，可以使用别名，也可以使用路径。

```shell
 sudo dedit ~/.bashrc
 # VSCode 环境变量
 alias code=/opt/apps/com.visualstudio.code/files/code 
```

### 2.3 临时变量 

只在终端输入别名，只在当前打开的终端起作用。 

```shell
alias code=/opt/apps/com.visualstudio.code/files/code 
```

