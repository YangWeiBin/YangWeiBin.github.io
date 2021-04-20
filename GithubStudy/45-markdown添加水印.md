# markdown添加水印   

```css
/*设置水印*/
.md-fences {
    /*margin-bottom: 15px;
    margin-top: 15px;
    padding: 0.2em 1em;
    padding-top: 8px;
    padding-bottom: 6px;*/
    background-image: url("F:/00-short-cut-icon/031-watermark.png");
    background-repeat: no-repeat;/*设置Logo图片不平铺*/
    background-position: center center; /*设置Logo图片的位置(我这里设置的是中间位置)*/
    background-size: 80px 80px;/*设置Logo图片的大小*/
}
/*取消重叠*/
.code-tooltip{
	background-image: none;
}
.CodeMirror.cm-s-inner{
	background: transparent !important; 
}
```



```shell
/*设置水印*/
.md-fences {
    /*margin-bottom: 15px;
    margin-top: 15px;
    padding: 0.2em 1em;
    padding-top: 8px;
    padding-bottom: 6px;*/
    background-image: url("F:/00-short-cut-icon/031-watermark.png");
    background-repeat: no-repeat;	/*设置Logo图片不平铺*/
    background-position: right top; /*设置Logo图片的位置(我这里设置的是中间位置)*/
    background-size: 105px 15px;	/*设置Logo图片的大小*/
}
/*取消重叠*/
.code-tooltip{
	background-image: none;
}
.CodeMirror.cm-s-inner{
	background: transparent !important; 
}
```











## 参考资料  
1. https://blog.csdn.net/qq_36188663/article/details/105376834   