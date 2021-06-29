# SSH连接远程报错     

## 问题描述     

使用SSH登录时，发现登录被拒绝     

![055-1](./img/055-1.png)

## 解决方案    

### 1 安装SSH 

```shell
sudo apt install openssh-server
```

### 2 开启服务 

```shell
sudo /etc/init.d/ssh start
```

### 3 开启密钥  

```shell
ssh-keygen -A
```


## 参考资料   
1. https://blog.csdn.net/qq_35203425/article/details/100658746    