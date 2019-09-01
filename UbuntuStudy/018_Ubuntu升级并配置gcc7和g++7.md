# ubuntu16.04 升级配置gcc7，g++7      

## ubuntu16.04 安装gcc7，g++7
```shell
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update 
sudo apt-get install gcc-7
sudo apt-get install g++-7
```

配置:将gcc7，g++7作为默认选项
```shell
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 100
sudo update-alternatives --config gcc

sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 100
sudo update-alternatives --config g++
```

查看是否成功：
```shell
gcc --version

g++ --version
```



## 参考内容  
1. https://www.cnblogs.com/shuazi/p/10688992.html  
2. https://blog.csdn.net/calvinpaean/article/details/90691315    
3. https://www.jianshu.com/p/3fa30b788d0e  



