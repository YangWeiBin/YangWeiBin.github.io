# 024 Markdown-实现页内跳转    
---

- 锚点是网页制作中的一种，又叫命名锚记。命名锚记像一个迅速定位器一样是一种页面内的超级链接，运用相当普遍。  
- markdown语法中是不支持锚点的，但是它可以通过标签和标题来实现跳转。  

## 24.1 使用a标签(需要更新最新版)

q  
2  
qq  
qqq  
<a name="anchor"></a> Anchor  
q  
2  
qq  
qqq  
<a href="#anchor">Link to Anchor</a>  
2  
qq  
qqq  

<a name="anchor"></a>   
2  
qq  
qqq  
<a href="#anchor">Link to Anchor</a>

## 24.2 标题可以作为链接来实现跳转(推荐)   

1  
q  
qq    
- [toA](#titleA)  
q  
q  
2  
qq  
qqq  
- [toB](#titleB)  



### 24.3 借助TOC  
[TOC]

## 24.3 总结     
1. span 和div肯定不行，typroa不支持   
2. 对于推荐的a标签也支持的不好  
3. toc 不支持github  
4. 推荐使用标题完成，可以设置6级标题，专门代表跳转部分     


## 24.4 参考网址  
1. https://blog.csdn.net/wait_for_eva/article/details/88374366   
2. https://www.jianshu.com/p/6571d37c8060     
3. https://support.typora.io/Links/#html-a-tag  

###### titleB  
##### titleA



## 试试

[Link Text][Ref]

[Ref]: https://blog.csdn.net/u013502146/article/details/103171825 "optional title"