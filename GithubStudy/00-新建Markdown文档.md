# [时间轴的代码分析](./)  [img](./img)     

> ######  _标签:_   ![](https://img.shields.io/badge/技术类-yellowgreen.svg) ![](https://img.shields.io/badge/Ramses Composer-代码分析-blue.svg) [![](https://img.shields.io/badge/链接-github仓库-brightgreen.svg)](https://github.com/COVESA/ramses-composer) [![](https://img.shields.io/badge/链接-代码文件-orange.svg)](../02-code/)        
>

[toc]    

## 问题描述 

当使用Ramses Composer进行播放动画时，发现播放的动画在第一次循环执行完成后，数据帧回到了时间轴的起始点，但是图形的状态还停留在时间轴的终止点上。在进行第二次动画播放时，动画的效果从终止点的效果开始变化，导致效果出错。现象如下：



<center>
<img src="./img/06-3.png" alt="06-3" style="zoom:30%;" />
</center>
