# Ubnutu 18.04 LTS 开启SSH服务

[TOC]

## 1 更新源列表  
```shell
sudo apt-get update  
```

## 2 安装openssh-client  
```shell
sudo apt-get install openssh-client  
```
权限使用时，不用采用root，超级管理员即可。  
## 3 安装openssh-service  
```shell
sudo apt-get install openssh-server    
```

## 4 启动ssh服务  
```shell
sudo service ssh start      
```

## 5 查看IP地址  
```shell
ifconfig      
```

## 6 远程登录  
* 下载MobaXterm
* ssh中填写服务器IP
* 输入账号、密码