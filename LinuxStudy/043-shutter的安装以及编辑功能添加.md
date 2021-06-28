# shutter的安装及编辑功能的添加     

## 1 shutter安装      
```shell
sudo apt-get install shutter
```

## 2 定义shutter快捷键     
- 设置>>>>键盘>>>>快捷键>>>>添加     

```txt
Name:shutter截图
command:shutter -s
F2
```

## 3 开启编辑功能    
 下载3个依赖文件：

 libgoocanvas-common：https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas-common_1.0.0-1_all.deb
libgoocanvas3：https://launchpad.net/ubuntu/+archive/primary/+files/libgoocanvas3_1.0.0-1_amd64.deb
libgoo-canvas-perl：https://launchpad.net/ubuntu/+archive/primary/+files/libgoo-canvas-perl_0.06-2ubuntu3_amd64.deb

```shell
sudo dpkg -i libgoocanvas-common*.deb
sudo dpkg -i libgoocanvas3*.deb
sudo dpkg -i libgoo-canvas-perl*deb
sudo apt install -f
```

## 4 重启系统   


1. https://blog.csdn.net/fuwugui/article/details/104337498?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-1.control&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-1.control     
2. https://blog.csdn.net/haeasringnar/article/details/81809040?utm_medium=distribute.pc_relevant.none-task-blog-OPENSEARCH-3.control&depth_1-utm_source=distribute.pc_relevant.none-task-blog-OPENSEARCH-3.control  