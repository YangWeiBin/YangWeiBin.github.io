# Markdown合并单元格   

- [HTML表格](https://www.runoob.com/html/html-tables.html)  

- [HTML合并表格-单元格](https://blog.csdn.net/qq_42651904/article/details/81661366)     

## 1 html插入表格   
 `<table>` 标签定义表格；     

 `<tr>` 标签定义每个表格均有若干行，每行被分割为若干单元格（由` <td>` 标签定义）。    

` <td> `标签指表格数据（table data），即数据单元格的内容。**也可以认为是1个单元格**，数据单元格可以包含文本、图片、列表、段落、表单、水平线、表格等等。      

```HTML 
<table border="1"> <!--表格-->
    <tr>  <!--第一行-->
        <td>row 1, cell 1</td>   <!--第一行，第一列-->
        <td>row 1, cell 2</td>   <!--第一行，第二列-->
    </tr>
    <tr>  <!--第二行-->
        <td>row 2, cell 1</td>	<!--第二行，第一列-->
        <td>row 2, cell 2</td>	<!--第二行，第二列-->
    </tr>
</table>   
```

效果如下： 

<table border="1">
    <tr align = "center">
        <td>row 1, cell 1</td>
        <td>row 1, cell 2</td>
    </tr>
    <tr>
        <td>row 2, cell 1</td>
        <td>row 2, cell 2</td>
    </tr>
</table> 

## 2 合并单元格    

- 合并行和列都是在`<tr>`行标签里面添加标记合并     

- 合并列：**从左往右，把要合并的不写用，用colspan写要合并的列**。
  - colspan = "k"：合并列，k代表横向合并k个单元格，k的值默认是1  
- 合并行：**从上往下，把要合并的不写用，用rowspan写要合并的行**。  
  - rowspan = "k"：合并行，k代表竖向合并k个单元格，k的值默认是1  

```html 
<table border = 1 align = "center">
       <tr align = "center"> <!--第一行，居中-->
         <td colspan="2">第一行第一列</td>  <!--第一行，第一个单元格，横向占两个格子-->
                                          <!--第一行，第二列不用写-->
         <td>第一行第三列</td>			  <!--第一行，第三列-->
         <td>第一行第四列</td>			  <!--第一行，第四列-->
       </tr>
       <tr>	 <!--第二行-->
         <td rowspan="2">第二行第一列</td>  <!--第二行，第一个单元格，竖向占两个格子-->
         <td>第二行第二列</td>			  <!--第二行，第二列-->
         <td>第二行第三列</td>			  <!--第二行，第三列-->
         <td>第二行第四列</td>			  <!--第二行，第四列-->
       </tr>
       <tr>  <!--第三行-->
                                          <!-- <td>第三行第一列不用写</td> -->
         <td>第三行第二列</td>			  <!--第三行，第二列-->
         <td>第三行第三列</td>			  <!--第三行，第三列-->
         <td>第三行第四列</td>			  <!--第三行，第四列-->
       </tr>
</table>
```

实现效果如下：

<table border = 1 align = "center">
       <tr align = "center" align = "center"> <!--第一行，居中-->
         <td colspan="2">第一行第一列</td>  <!--第一行，第一个单元格，横向占两个格子-->
                                          <!--第一行，第二列不用写-->
         <td>第一行第三列</td>			  <!--第一行，第三列-->
         <td>第一行第四列</td>			  <!--第一行，第四列-->
       </tr>
       <tr>	 <!--第二行-->
         <td rowspan="2">第二行第一列</td>  <!--第二行，第一个单元格，竖向占两个格子-->
         <td>第二行第二列</td>			  <!--第二行，第二列-->
         <td>第二行第三列</td>			  <!--第二行，第三列-->
         <td>第二行第四列</td>			  <!--第二行，第四列-->
       </tr>
       <tr>  <!--第三行-->
                                          <!-- <td>第三行第一列不用写</td> -->
         <td>第三行第二列</td>			  <!--第三行，第二列-->
         <td>第三行第三列</td>			  <!--第三行，第三列-->
         <td>第三行第四列</td>			  <!--第三行，第四列-->
       </tr>
</table>

## 3 表格常用标签  

标签	| 描述
:-:|:-:
`<table>`	| 定义表格
`<th>`	| 定义表格的表头
`<tr>`	| 定义表格的行
`<td>`	| 定义表格单元
`<caption>`	| 定义表格标题
`<colgroup>`	| 定义表格列的组
`<col>`	| 定义用于表格列的属性
`<thead>`	| 定义表格的页眉
`<tbody>`	| 定义表格的主体
`<tfoot>`	| 定义表格的页脚







<table text-align = "center" > <!--表格-->
    <tr>  <!--第一行-->
        <td rowspan="9" style=" vertical-align: middle !important " >窗口管理器</td>   <!--第一行，第二列-->
        <td rowspan="4" style=" vertical-align: middle !important ">单应用窗口</td>   <!--第一行，第二列-->
        <td rowspan="4" style=" vertical-align: middle !important ">核心</td>   <!--第一行，第二列-->
        <td rowspan="4" style=" vertical-align: middle !important ">支持应用窗口打开默认最大化，支持部分应用全屏显示（无状态栏）;
应用打开时支持单指从屏幕底部向上轻扫将应用最小化；<br>
支持单指从屏幕左侧或右侧边缘向屏幕中心滑动，<br>滑动超过固定区域（提供配置）则自动切换到下一窗口；</td>   <!--第一行，第二列-->
        <td>支持过渡动效：打开、最小化</td>	<!--第二行，第二列-->
    </tr>
    <tr>  <!--第二行-->
        <td>[一期体验完善]应用窗口打开时，单指从屏幕底部边缘向上轻扫应最小化应用；</td>
    </tr>
    <tr>  <!--第三行-->
        <td>应用内打开弹窗时，应支持响应系统手势；</td>
    </tr>
    <tr>  <!--第四行-->
        <td>应用全屏显示时，应支持唤出显示下拉面板；</td>
    </tr>
    <tr>  <!--第五行-->
    	<td rowspan="4" style=" vertical-align: middle !important ">多任务视图</td>   <!--第一行，第二列-->
        <td rowspan="4" style=" vertical-align: middle !important ">核心</td>   <!--第一行，第二列-->
        <td rowspan="4" style=" vertical-align: middle !important ">支持单指从屏幕底部向上滑动进入多任务视图，展示运行中应用的缩略窗口；<br>
支持在多任务视图中快速切换进入不同应用窗口；<br>
支持单指按住缩略窗口向上滑动快捷关闭应用；</td>   <!--第一行，第二列-->
        <td>五指向内合拢进入多任务视图；</td>
    </tr>
    <tr>  <!--第六行-->
        <td>支持过渡动效：多任务视图应跟手响应，而非等松手才出现；应用窗口随手动效和多任务视图的对应缩略图应联动；</td>
    </tr>
    <tr>  <!--第七行-->
        <td>缩略图窗口：
显示顺序-最后打开的应用窗口应位于右上角第一个；<br>
UI效果模糊，需要优化；</td>
    </tr>
    <tr>  <!--第八行-->
        <td>支持一键关闭全部已开启的应用窗口；</td>
    </tr>
    <tr>  <!--第九行-->
        <td>分屏</td>	
        <td>一般</td>	
        <td>/</td>	
        <td>支持分屏模式（分屏交互、分屏尺寸调整、退出分屏）</td>
    </tr>
</table>   
