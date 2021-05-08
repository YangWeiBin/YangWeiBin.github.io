# Typroa设置自己的style
## 概述   

对于Typroa的主题风格有时候并不能满足所有的情况，有时候看到各种主题，都是各有千秋，有时候希望把这些优点合并起来，如何操作呢？下面一些例子仅供参考。

## CSS配置  

>##### 背景风格  
>
>```Css
>:root { /** 修改整体的界面背景  **/
>    --side-bar-bg-color: #a3d5fe;
>    --control-text-color:  #b7b7b7;
>    --primary-color: #a3d5fe;
>    --bg-color:  #e3edcd;
>}
>```

>##### 设置水印(之前写过)  
>
>```css
>/*设置水印*/
>.md-fences {
>    /*margin-bottom: 15px;
>    margin-top: 15px;
>    padding: 0.2em 1em;
>    padding-top: 8px;
>    padding-bottom: 6px;*/
>    background-image: url("F:/00-short-cut-icon/031-watermark.png");
>    background-repeat: no-repeat;/*设置Logo图片不平铺*/
>    background-position: right bottom; /*设置Logo图片的位置(我这里设置的是中间位置)*/
>    background-size: 105px 15px;/*设置Logo图片的大小*/
>    background-color: #DCE2F1;  /** #a3d5fe;  **/
>}
>/*取消重叠*/
>.code-tooltip{
>	background-image: none;
>}
>```

>##### 设置代码框   
>
>```css
>/*设置水印*/
>blockquote  {
>    /*margin-bottom: 15px;
>    margin-top: 15px;
>    padding: 0.2em 1em;
>    padding-top: 8px;
>    padding-bottom: 6px;*/
>    background-image: url("F:/00-short-cut-icon/031-watermark.png");
>    background-repeat: no-repeat;/*设置Logo图片不平铺*/
>    background-position: right bottom; /*设置Logo图片的位置(我这里设置的是中间位置)*/
>    background-size: 105px 15px;/*设置Logo图片的大小*/
>    background-color: #c7edcc;  /** #a3d5fe;  **/
>}
>```

## CSS风格保存  

设置好的Css主题风格可以保存到自己的其他目录，防止软件更新时，把自己的主题覆盖掉。还有就是，把设置好的主题风格放到主题目录，可以重启Typroa，可以在主题选择菜单中看到相应的主题。 

## 参考资料 

1. https://blog.csdn.net/qq_43649223/article/details/107417169    
1. https://www.jianshu.com/p/8ffb8ba2a118   