# Sailfish OS添加环境变量  

## 概述  

由于需要使用到`sfdk tools list`命令，因此需要配置Sailfish IDE相应的环境变量，配置方法如下：

```shell
# 1 打开配置文件
sudo vim /etc/profile

# 2 添加如下信息  
	# SailfishOS 环境变量
	export SAILFISH_HOME=/data/home/yang
	export PATH=$PATH:$SAILFISH_HOME/bin
	
# 3 重新加载配置文件
source /etc/profile
```

## 命令验证  

```shell
yang@yang-PC:~$ sfdk tools list
sfdk: [I] Starting the build engine…

```

## 参考资料  

1. https://www.jianshu.com/p/38bb857d059f  