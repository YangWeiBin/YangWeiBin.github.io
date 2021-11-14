# [NTFS文件系统改为Ext4](./)  [img](./img)     

> ######  _标签:_   ![](https://img.shields.io/badge/技术类-yellowgreen.svg) ![](https://img.shields.io/badge/OpenGL-用户手册-blue.svg) [![](https://img.shields.io/badge/链接-你好！三角形-brightgreen.svg)](https://learnopengl-cn.github.io/01%20Getting%20started/04%20Hello%20Triangle/) [![](https://img.shields.io/badge/链接-代码文件-orange.svg)](../02-code/)     
>

## 基本步骤  

1. 使用微PE启动盘，进入系统;  

2. 通过磁盘工具，将磁盘格式化成Ext4格式；

3. 将格式化的磁盘修改名字；

4. 重启计算机。

5. 通过命令将磁盘文件的权限改为777 

   ```shell
   # 批量修改文件及其子文件的权限  
   sudo chmod -R 777 /home/user
   ```

   
