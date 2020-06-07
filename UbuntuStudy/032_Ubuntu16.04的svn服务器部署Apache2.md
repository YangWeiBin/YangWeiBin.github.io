# Ubuntu16.04的svn服务器部署Apache2          

[toc]

## 1 SVN和Apache2的简介   
- Subversion是一个自由，开源的版本控制系统，这个版本库就像一个普通的文件服务器，不同的是，它可以记录每一次文件和目录的修改情况。这样就可 以很方面恢复到以前的版本，并可以查看数据更改细节。    
- Subversion(SVN)作为一个单独的版本管理软件是不具备网页浏览功能的。就是说，你可以用版本管理的客户端比如：TotoriseSVN来和SVN服务器进行连接      
- 如果给SVN添加个网页浏览功能，可以通过浏览器进行访问浏览SVN，这样就很方便了。Apache就是干这事的，于是基于Apache的SVN安装方式就在网络上铺天盖地了，这样就可以通过`http://`的形式来访问了      
- 如果不使用Apache，就可能使用svn://形式来访问  
- 总结成一句话，你的SVN是只给程序员用的就可以不安装Apache，如果还给其它人使用最好就安装个Apache。      

## 2 安装Apache2和svn-apache连接库   
```
sudo apt-get install apache2   
sudo apt-get install libapache2-svn
```

## 3 给版本库已有授权   
```
# 1 如果只有一个(我按照一个算的，可以一步步添加)
sudo chmod –R 777 /home/svn/project1
# 2 如果有多个
sudo chmod –R 777/home/svn
```

- R：该目录及其子目录   
- (注意：如果你要建多个库，每个库都要给他权限。我直接使用 sudo chmod –R 777/home/svn，将/home/svn文件夹改为可读可写可执行)     


## 4 改变仓库拥有者   
```
# 1 如果只有一个：将拥有者改为Apache2，这样可以通过http来访问
sudo chown -R www-data:www-data /home/svn/test
# 2 如果有多个：将/home/svn文件夹改为Apache2可访问
 sudo chown –R www-data:www-data /home/svn
```

## 5 配置svn-apache2的连接库    
- 只需要修改apache2配置文件。代码如下：   
```
sudo gedit /etc/apache2/mods-available/dav_svn.conf
```

- 添加如下   
```
<Location /svn>

DAV svn
SVNParentPath /home/svn       
AuthType Basic
AuthName "Subversion Repository"
AuthUserFile /etc/apache2/dav_svn.passwd
Require valid-user

</Location>
```

## 6 创建SVN用户   
```
sudo htpasswd [-c] /etc/apache2/dav_svn.passwd ywb  
# 输入密码：112233-
```

- -c:首次在这个文件下建用户需要加 -c ;再加个用户就要去掉 -c 了，否则就要覆盖前面创建的用户。  
- 执行上面代码提示“新用户”设置密码   

## 7 启动Apache服务   
```
sudo /etc/init.d/apache2 restart
```

## 8 测试http访问    
- 在客户端，网址栏输入     
```
http://服务器地址/svn/库名
```

## 9 SVN添加新版本库方法   
1. 创建版本库  
```
sudo svnadmin create /home/svn/test1  
```

2. 设置目录权限
```
  sudo chmod –R 777 /home/svn/test1
# 若提示：chmod -R 无效模式，说明不可能是设置了 /home/svn/的读写权限，这个不用设置了
  sudo chown -R www-data:www-data /home/svn/test1
```

3. 配置conf目录下的svnserve.conf文件，详见上一篇，修改4个地方  
``` 
    sudo gedit /home/svn/test1/conf/svnserve.conf   
```

4. 重启SVN服务  
```
    sudo pkill svnserve
    sudo svnserve -d -r /home/svn
```

## 10 参考资料   

1. http://blog.sina.com.cn/s/blog_e76c0ac00102vjhg.html    
2. https://www.cnblogs.com/daxuezhidao/p/5716213.html   
3. https://blog.csdn.net/zhangxufei/article/details/79305142    

