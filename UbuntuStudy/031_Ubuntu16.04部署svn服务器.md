# Ubuntu16.04部署svn服务器         

[toc]

## 1 SVN和Apache2的简介   
- Subversion是一个自由，开源的版本控制系统，这个版本库就像一个普通的文件服务器，不同的是，它可以记录每一次文件和目录的修改情况。这样就可 以很方面恢复到以前的版本，并可以查看数据更改细节。    
- Subversion(SVN)作为一个单独的版本管理软件是不具备网页浏览功能的。就是说，你可以用版本管理的客户端比如：TotoriseSVN来和SVN服务器进行连接      
- 如果给SVN添加个网页浏览功能，可以通过浏览器进行访问浏览SVN，这样就很方便了。Apache就是干这事的，于是基于Apache的SVN安装方式就在网络上铺天盖地了，这样就可以通过`http://`的形式来访问了      
- 如果不使用Apache，就可能使用svn://形式来访问  
- 总结成一句话，你的SVN是只给程序员用的就可以不安装Apache，如果还给其它人使用最好就安装个Apache。      
## 2 SVN在Ubuntu16.04上服务器搭建    
### 2.1 安装SVN  

```bash
sudo apt-get install subversion  
```

### 2.2 创建版本库   

```bash
# 1. 先创建SVN目录
sudo mkdir /home/svn
# 2. 创建项目目录(可以有多个)
sudo mkdir /home/svn/project1  
# 3. 创建项目仓库(形成版本控制隐藏文件 .svn)   
svnadmin create /home/svn/project1
```

### 2.3 修改账户密码文件   
- 如果有多个项目仓库的话，用户信息需要在每个仓库的conf文件夹authz和passwd两个文件中设置，这样比较麻烦，因此将用户账户和密码信息移动到`/home/svn/`目录     
- 仓库目录下有如下目录：   
	- conf：配置信息   
	- db：数据库  
	- hooks：钩子，类似于触发器或信号   
	- locks：目录锁   
	- format：格式  
	- README.txt：仓库介绍   
1. 取出project1下面conf文件夹下的authz和passwd两个文件到svn根目录下面   
```bash
sudo mv /home/svn/project1/conf/authz /home/svn/   
sudo mv /home/svn/project1/conf/passwd /home/svn/ 
```

2. 修改版本库目录conf文件夹下面的svnserve.conf文件(如果有多个仓库的话，都要修改)    
```bash
sudo gedit /home/svn/project1/conf/svnserve.conf   
```

原来内容|修改后内容  
-|-
`#anon-access = read` |`anon-access = none` (无账号登录不可读写)
`#auth-access = write`|`auth-access= write`(有账户登录可以写入)
`#password-db = passwd`|`password-db = ../../passwd`(密码文件移入上两级目录svn)
`#authz-db = authz`|`authz-db = ../../authz`(权限文件移入上两级目录svn)

- 注意：`password-db = ../../passwd`，`authz-db = ../../authz`代表相对路径，回退两级目录    

### 2.4 创建用户分配权限   
1. 设置用户名及密码  
- 打开svn目录下的passwd文件，创建方法是在[user]下面添加 username = passwd，记得“=”前后的空格，如下图：(admin控制所有项目，统一管理）    
```bash
sudo gedit /home/svn/passwd  
```

- 添加如下：   
```txt
[users]
admin = ywbSVN-123
ywb = yang-123-svn
omar = omar123
wxy = xcyisvn-111
bigger = 123456
test = 123456

```

2. 角色可分如下几类人(命名任意)：   
	- 管理员（admin），用来管理整个库   
	- 项目经理（manage），用来相关管理文档    
	- 开发人员 （develop），用来开发代码   
	- 测试人员(test)，用来测试软件    

3. 为角色分权限   
- 比如项目结构如下：    

```   
- project1   
	- 1-development-library   
	- 2-controlled-library  
	- 3-product-library   
```

- 修改权限文件如下：    

```bash
sudo gedit /home/svn/authz  
```

- 在文件中加入：    

```txt
# 1 给用户分组，取名时遵从C语言规则，不能用减号
[groups]
	admin_group = admin  
	p1_manager_group  = omar
	p1_developer_group  =  ywb, wxy, bigger
	p1_test_group = test
# 2 给每组分权限
## 根目录下，admin-group拥有所有权限，其他人只有读权限
[svnroot:/]
@admin_group = rw
* = r
## project1目录：admin-group和p1-manager-group拥有所有权限，其他人只有读权限   
[project1:/]
@admin_group = rw 
@p1_manager_group = rw 
* = r  

[project1:/1-development-library]
@admin_group  =  rw
@p1_manager_group = r
@p1_developer_group = rw  
@p1_test_group = rw 

## 其他类似 
```

### 2.5 启动SVN   
1. 第一次启动  
```bash
sudo svnserve -d -r /home/svn
```
2. 测试是否启动成功  
```
sudo netstat -antp |grep svnserve  
# tcp    0      0 0.0.0.0:3690    0.0.0.0:*      LISTEN    28967/svnserve   
```
3. 关闭服务   
```
sudo pkill svnserve  
```
4. 开机自启动  
```
cd /etc/init.d   
sudo touch svnd.sh   
sudo chmod +x svnd.sh  
sudo gedit svnd.sh
```

5. 复制如下，注意`/ysh/svn`不可变   

```bash
#!/bin/bash
#svnserve startup
svnserve -d -r /ysh/svn
```

6. 更新修改权限 
```
sudo  update-rc.d svnd.sh defaults
```

## 3 SVN客户端下载   
- E:\00-software-installation\32-TortoiseSVN-1.14.0.28885-x64-svn-1.14.0.msi     
- E:\00-software-installation\33-LanguagePack_1.14.0.28885-x64-zh_CN.msi  
- 访问版本库地址   
```
svn://172.16.26.28/project1
svn://服务器IP地址/project2
```

## 4 SVN的客户端用法   
https://blog.csdn.net/weixin_30449453/article/details/98276121    
## 参考资料   

1. http://blog.sina.com.cn/s/blog_e76c0ac00102vjhg.html    
2.  https://www.cnblogs.com/daxuezhidao/p/5716213.html   
3.  http://www.cppblog.com/sureandrew/articles/94748.html   
4. https://tortoisesvn.net/downloads.html   
5. https://blog.csdn.net/chen_anan/article/details/82014737     
6. https://blog.csdn.net/weixin_30449453/article/details/98276121 


