# [时间轴的代码分析](./)  [img](./img)     

> ######  _标签:_   ![](https://img.shields.io/badge/技术类-yellowgreen.svg) ![](https://img.shields.io/badge/Ramses Composer-代码分析-blue.svg) [![](https://img.shields.io/badge/链接-github仓库-brightgreen.svg)](https://github.com/COVESA/ramses-composer) [![](https://img.shields.io/badge/链接-代码文件-orange.svg)](../02-code/)        
>

[toc]    

## 问题描述 

当使用Ramses Composer进行播放动画时，发现播放的动画在第一次循环执行完成后，数据帧回到了时间轴的起始点，但是图形的状态还停留在时间轴的终止点上。在进行第二次动画播放时，动画的效果从终止点的效果开始变化，导致效果出错。现象如下：

>### bug现象  
>
><center>
><img src="./img/06-1.png" alt="06-1" style="zoom:30%;" />
></center>
>
>### 正常现象  
>
><center>
><img src="./img/06-2.png" alt="06-2" style="zoom:30%;" />
></center>

## 注意事项  

- 当在起始点插入frame时，bug就不再出现了；  
- 当从keyFrame的位置往回拖动，可以回到正确的状态。 

<center>
<img src="./img/06-3.png" alt="06-3" style="zoom:30%;" />
</center>

## 可能的原因  

当动画随着时间轴执行完成后，时间轴的数据帧回到了起始点，但是图像的数据没有及时更新到起始位置。   

> ##### 2022-03-30  
>
> - 从获取数据和保存数据的位置入手  