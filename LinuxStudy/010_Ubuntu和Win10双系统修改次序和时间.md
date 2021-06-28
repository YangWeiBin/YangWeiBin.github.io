# Ubuntu和Win10双系统修改开机次序和选择时间     
[参考博客](https://www.jianshu.com/p/f3c3beb7f205)  
1. 进入Ubuntu系统，打开终端，输入:  
```shell
sudo vim  /etc/default/grub
```
2. 打开grub文件以后，第一行代码为 GRUB_DEFAULT=0（以#开头的是注释行，不算代码），意思就是启动菜单顶部的为默认启动项，将0改为4，保存，退出。（启动菜单中一般共五项，windows位于最后，我的ubuntu16.04 +win10是这样的。）      默认启动时间是10s，可以这样修改：在GRUB_DEFAULT=0这一行下面2、3行的样子，有一行代码是GRUB_TIMEOUT=10，修改数字，保存，退出。（千万别忘了执行第三步，更新grub文件）  
3. 然后在终端中输入:  
```shell  
#更新grub.cfg文件，使刚才的改动生效  
sudo update-grub
```
4. 重启电脑  
5. 有博客给出的方法是直接修改/boot/grub/grub.cfg文件，但该文件是自动生成的，不建议直接修改。上面方法亲测可行。  


