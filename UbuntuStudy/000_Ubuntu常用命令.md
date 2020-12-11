# Ubuntu常用命令    

## 1 修改开机次序  
```shell
sudo vim  /etc/default/grub
#更新grub.cfg文件，使刚才的改动生效  
sudo update-grub
```

## 2 关机和重启  
### 2.1 重启命令     
```shell  
# 1.立刻重启
reboot   # 或者  shutdown -r now
# 2.过10分钟自动重启
shutdown -r 10 
# 3. 在时间为20:35时候重启
shutdown -r 20:35 
```
如果是通过shutdown命令设置重启的话，可以用shutdown -c命令取消重启   
### 2.2 关机命令  
```shell
# 1. 立刻关机（一般加-p 关闭电源）
halt   #或者  poweroff
# 2. 立刻关机
shutdown -h now 
# 3. 10分钟后自动关机 
shutdown -h 10 
```
[参考博客](https://www.cnblogs.com/jiu0821/p/8420672.html)  
## 3 设置屏幕  

cd /etc/init.d
sudo update-rc.d -f MyHomeScreen.sh remove
```shell
xrandr
xrandr --output eDP-1-1 --off 
```

## 4 创建快捷方式  
```shell
sudo ln -sT  /media/yang/Windows/Users/YangWeibin/Desktop/记事本.md      /home/yang/Desktop/记事本.md
```
## 5 卸载软件 
1. 打开终端：  
```shell
dpkg --list
```
2. 找到要卸载的软件  
```shell
sudo apt-get --purge remove gconf-editor
```
3. 继续执行  
4. 可以再看看是否成功  
**或者根据安装指令：**  
```shell
# sudo apt-get install flashplugin-installer
sudo apt-get --purge remove flashplugin-installer
```



  


