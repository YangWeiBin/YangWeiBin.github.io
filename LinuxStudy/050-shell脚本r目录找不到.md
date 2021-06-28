# [deepin-kwin脚本编译](./)   

[toc]

## 1 首次编译  

```shell
sudo chmod 777 01-my-first-make.sh  # 给权限，同时可以短暂记忆密码，后面就不用输入了
./01-my-first-make.sh
```

01-my-first-make.sh脚本的内容如下：

```shell
#!/bin/bash
cd deepin-kwin/
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=on -DCMAKE_PREFIX_PATH=/usr ..  
make -j16 && sudo make install 
```

## 2 再次编译  

```shell
sudo chmod 777 02-remake.sh # 给权限，同时可以短暂记忆密码，后面就不用输入了
./02-remake.sh 
```

02-remake.sh 脚本内容如下  

```shell
#!/bin/bash
cd ./deepin-kwin/build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=on -DCMAKE_PREFIX_PATH=/usr  ..  
make -j16 && sudo make install 
exit 0
```

## 3 问题解决   
### 3.1 遇到问题   
Linux下运行shell脚本显示cd: $’ \r\r’: No such file or directory没有那个文件或目录     

### 3.2 解决方法    

用vim打开.sh脚本文件， 重新设置文件的格式

- ：set ff 然后回车 再重新设置下文件格式：

- ：set ff=unix 然后保存退出

- ：wq! 回车

### 3.3 参考资料  
1. http://dushusir.com/linux-bash-no-such-file-or-directory/