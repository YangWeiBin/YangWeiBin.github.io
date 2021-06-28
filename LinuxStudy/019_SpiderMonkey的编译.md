# SpiderMonkey的编译      

## 下载github上的源代码  
```shell
git clone --depth 1 https://github.com/mozilla/gecko-dev.git  
## 也可以使用： git clone https://github.com/mozilla/gecko-dev.git 
cd gecko-dev/js/src
```
## 进入代码目录  
[参考](https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey/Build_Documentation)  

```shell
cd js/src
autoconf2.13
mkdir build_OPT.OBJ
cd build_OPT.OBJ
../configure.in --enable-debug --disable-optimize
make
```

## 遇到问题解决  
1. 安装autoconf2.13  
```shell
sudo apt install autoconf2.13
```
2. 更新gcc以及g++；  
3. 安装rustc（自带cargo）；  
[参考](https://www.linuxidc.com/Linux/2019-01/156211.htm)  
[参考](https://www.cnblogs.com/sunlingC/p/11120315.html)     
```shell
curl https://sh.rustup.rs -sSf | sh
sudo apt install curl
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustc --version
cargo --version
```
4. 安装clang以及llvm（自动安装）;  
[参考](https://blog.csdn.net/DumpDoctorWang/article/details/84567757)  
```shell
# 先安装clang-3.8和clang-4.0：
sudo apt-get install clang-3.8 clang-4.0  
# 然后使用update-alternatives“安装”两个版本的clang：
# for clang-3.8
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-3.8 1 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-3.8
# for clang-4.0
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-4.0 2 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-4.0
# 查看版本，应该是4.0
clang --version
```




