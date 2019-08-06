# Ubuntu16.04LTS备份与恢复  

## 1 系统备份  
### 1.1 切换root权限并进入根目录  
```shell  
su root
cd /
```
### 1.2 新建01restore文件夹来保存备份文件  
```shell  
mkdir restore
```
### 1.3 备份系统  
```shell  
tar cvpzf /restore/backup.tgz --exclude=/proc --exclude=/lost+found --exclude=/mnt --exclude=/media --exclude=/sys --exclude=/restore /
```
这一步可能会提示’tar: Error exit delayed from previous  errors’，忽略即可  
或者     tar: 由于前次错误，将以上次的错误状态退出    
上面命令有：proc ，lost+found ，mnt，media， sys未备份  
### 1.4 备份移动  
```shell
#移动到备份文件夹
cd /
sudo mv restore /media/yang/DownLoad/UbuntuReatore 
```
### 1.5 修改备份说明文件  
将/media/yang/DownLoad/UbuntuReatore下的README.md文件进行修改，填写备份的系统内容，方便以后的系统还原。  

## 2 恢复系统  
**注：**后面的系统恢复部分，参考其他人的，没有亲自试验。  
### 2.1 重装系统  
重新做系统盘，继续采用U盘启动，制作方式[参考文档](./007_UEFI启动安装Ubuntu16和win10双系统.md)  
使用ubuntu启动盘重新安装系统，这一步的目的是**自动分配存储空间和挂载**(也可以根据自己的需求重新分区)，如果你会手动完成这两个任务则不需要重装系统，对于Ubuntu不太熟悉的朋友可以照做即可，这个系统在安装后会被我们删除，因此不需要连接网络，也不需要在安装时安装第三方程序。  
**注意：**本步骤仅仅为了方便分区，或者自己想调整分区大小。  
### 2.2 拷贝出来挂载以及引导文件  
继续采用Ｕ盘启动try ubuntu without installing系统，然后备份刚刚装好的[UBUNTU]fstab和grub.cfg文件。    
**注意：**# 在tryUbuntu根目录下有media文件夹，里面是U盘文件夹和新安装的系统文件夹(算上新安装的系统，此时有三个系统：  
- 备份的系统  
- 新安装的纯净的Ubuntu（对应着UBUNTU）  
- U盘中的Ubnutu（当前启动的是U盘中的系统）  
在里面分别用(备份系统)，（U盘中系统）和（新装UBUNTU）表示，此时启动的是(Ｕ盘中的系统)，因为这里启动用的是（U盘中系统），因此，（新装UBUNTU）在（U盘中系统）中media挂载的外部设备中。    

```shell  
# 切换root用户
sudo su
# 我们的Linux系统在无法启动时候，通常需要进入单用户模式下进行修改一些配置文件，或调整一些参数方可。但是在进入单用户模式后，我们的/文件系统是只读模式，无法进行修改，那么这个时候我们就需要用到一条命令：mount –o remount,rw / 这个命令来让我们的/路径文件系统为可读模式，这样就可以实现自由修改了。因为要将(新装UBUNTU)的文件写入U盘，所以，用这个命令  
mount -o remount ,rw /

# 将（新装UBUNTU）根目录下/boot/grub/grub.cfg文件备份到U盘中
sudo cp /media/(新装UBUNTU)/boot/grub/grub.cfg ./    

# 将（新装UBUNTU）根目录下/etc/fstab文件备份到U盘中
sudo cp /media/（新装UBUNTU）/etc/fstab ./
```
fstab是与系统开机挂载有关的文件，grub.cfg是与开机引导有关的文件，所以这一步至关重要。  
### 2.3 清空（新装UBUNTU）   
```shell
# 进入（新装UBUNTU）中
cd /media/（新装UBUNTU）
sudo rm -rf ./*  
```
以上两步骤也可用：  
```shell
sudo rm -rf /media/磁盘名称/分区名称*
```
第3步实际上是：这一步删除（新装UBUNTU）全部的系统文件，有用的fstab及grub.cfg已经备份  
### 2.4 恢复备份系统  
```shell
# 将U盘中或者本地的backup.tgz复制到该目录下
cp /media/(U盘)/backup.tgz ./
# 解压缩
sudo tar xvpfz backup.tgz ./
# 创建打包系统时排除的文件
sudo mkdir proc lost+found mnt sys media
```
### 2.5 替换挂载以及引导文件  
在用我们在新系统中备份的fatab及grub.cfg文件去替换压缩包中解压出来的同名文件     
### 2.6 重启电脑  
```shell
sudo reboot 
```
重启后就发现系统已经恢复到备份时的状态，包括各种框架，环境，系统设置..................  



## 3 参考链接  
1. https://blog.csdn.net/sty1023750281/article/details/80877500    
2. https://blog.csdn.net/sinat_27554409/article/details/78227496    

