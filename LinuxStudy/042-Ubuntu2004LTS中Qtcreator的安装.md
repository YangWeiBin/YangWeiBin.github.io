# Ubuntu20/18LTS中qtctrator的安装及配置     

## 1 qtcreator的安装   
1. 先配置gcc  g++  cmake等开发环境，命令行实现   
2. 下载qt\*.run安装程序      
3. 通过命令允许run文件    

```shell
sudo chmod +x 54-qt-opensource-linux-x64-5.12.8.run 
sudo ./54-qt-opensource-linux-x64-5.12.8.run   
```

4. 在安装时选项中，只要安卓的不选以及第一个选项的最后一个子选项不选，剩下的都要进行选择(**关键步骤**)     
![042-1](./img/042-01.png)  

## 2 qtcreator的配置     
1. 安装g++   

```shell
sudo apt update  # 非常重要尤其是UOS系统，否则安装不成功
sudo apt-get install g++
```

2. 安装OPenGL   

```shell
sudo apt-get install mesa-common-dev
```

3. 添加环境路径   
```shell
gedit ~/.bashrc
```
// 在文档添加
```txt
export PATH=/opt/Qt5.12.8/Tools/QtCreator/bin:$PATH
```

4. 重启终端输入`qtcreator`即可启动软件       

## 3 创建快捷方式       
1. 创建快捷方式文件     
```
sudo gedit /usr/share/applications/QtCreator.desktop
```

2. 添加以下内容   

```
[Desktop Entry]
Type=Application
Name=QtCreator
GenericName=QtCreator
Exec=/opt/Qt5.12.8/Tools/QtCreator/bin/qtcreator
Icon=/opt/Qt5.12.8/Tools/QtCreator/share/qtcreator/qbs/share/qbs/examples/cocoa-application/CocoaApplication/CocoaApplication.xcassets/AppIcon.appiconset/icon_512x512.png
Terminal=false
Categories=Development;Qt;
```

3. 在启动项中可以找到相应的图标        

## 4 问题补充   
- 如果打开qtcretor新建项目出现如下bug        

```
-1: error: cannot find -lGL
```

- 请使用如下命令    
```shell
sudo apt-get install libgl1-mesa-dev 
```

# 参考资料   
1. https://www.cnblogs.com/wwzone/articles/13662946.html     
2. https://blog.csdn.net/rong11417/article/details/89262716  