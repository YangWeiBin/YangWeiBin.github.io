# 1 公式  
---
## 1.1 公式网址  
[Markdown数学公式语法](https://www.jianshu.com/p/e74eb43960a1)     
[Markdown 公式符号](https://www.jianshu.com/p/6e5dff42a77e)    
[MathJax与LaTex公式简介](https://www.cnblogs.com/linxd/p/4955530.html)   

---
## 1.2 公式的写法      
### 1.2.1 行内公式      
- 一个`$`之间放置公式      
- $ \vec{a} $是向量   
- 对数是 $\log_2 10$  
- 若我用两个`$`来括起来的话: 对数是  $$\log_2 10 $$  

### 1.2.2 行间公式  
- 两个`$$`之间放置公式可以使公式放于一行   
- 对数是  $$\log_2 10$$    
$$\log_2 10$$   

### 1.2.3 如何展示大括号   
1. 大括号前加1个斜杠，效果：$$ \{  \}  $$     
2. 大括号前加1个斜杠，$\lbrace A   \rbrace$  
3. github无法兼容大括号，必须用斜杠`lbrace`和斜杠`rbrace`   






## 1.3 综合应用   
### 1.3.1 行间公式前后，都有换行，且后面减号前有空行       
- 定义2.2：给定一组域$D_1,D_2,...,D_n$，允许其中某些域是相同的$D_1,D_2,...,D_n$的笛卡儿积为     
$$ D_1 \times D_2 \times ...\times D_n  = \{ (d_1,d_2,...,d_n) | d_i \in D_i , i = 1, 2, ..., n  \} $$   
其中，每个元素$  (d_1,d_2,...,d_n)  $叫做一个**n元组**，简称元组。   

- 定义2.2：给定一组域$D_1,D_2,...,D_n$，允许其中某些域是相同的$D_1,D_2,...,D_n$的笛卡儿积为   
$$D_1 \times D_2 \times ...\times D_n  = \{ (d_1,d_2,...,d_n) | d_i \in D_i , i = 1, 2, ..., n \}$$    
其中，每个元素$  (d_1,d_2,...,d_n)  $叫做一个**n元组**，简称元组。  


### 1.3.2 行间公式前后，都有无换行，且后面减号前无空行      
- 定义2.2：给定一组域$D_1,D_2,...,D_n$，允许其中某些域是相同的$D_1,D_2,...,D_n$的笛卡儿积为$$ D_1 \times D_2 \times ...\times D_n  = \{ (d_1,d_2,...,d_n) | d_i \in D_i , i = 1, 2, ..., n  \} $$ 其中，每个元素$  (d_1,d_2,...,d_n)  $叫做一个**n元组**，简称元组。    
- 定义2.2：给定一组域$D_1,D_2,...,D_n$，允许其中某些域是相同的$D_1,D_2,...,D_n$的笛卡儿积为  $$D_1 \times D_2 \times ...\times D_n  = \{ (d_1,d_2,...,d_n) | d_i \in D_i , i = 1, 2, ..., n \}$$  其中，每个元素$  (d_1,d_2,...,d_n)  $叫做一个**n元组**，简称元组。  

## 1.4 如果在github上显示还会有问题   
- 原因   
	- Markdown 原生就是不支持 LaTeX 的，GitHub Flavored Markdown 同样不支持。Markdown 的初衷就是成为一种与 HTML 兼容的 “易读易写” 的轻量级的网络标记语言，并不要求支持 LaTeX。  
- 解决方案   
	- 安装[chrome 插件](https://www.crx4chrome.com/crx/119782/)     
	- 用360安全浏览器打开  
	- 自动安装到了360浏览器    
	- 本地[chrome 插件位置](./others/ioemnmodlmafdkllaclgeombjnmnbima-0.2.3-Crx4Chrome.com.crx)    
- [参考网址](https://tding.top/archives/22f997b6.html)     

---
## 1.5  总结  
1. 加` <center>...</center>`可以居中markdown的公式   
2. 两个`$`之间放公式强制换行，且居中   
3. 一个 `$`之间放公式可以在行内     
4. 将  \` 放于标题行会产生乱码，解析错误     
5. github无法兼容大括号，必须用斜杠`lbrace`和斜杠`rbrace`   
6. 对于课本行间公式，如果写入一行中，github上显示的效果，和课本一致，但是Typroa软件没换行，看起来不舒服    
7. 对于课本行间公式，如果也换行写的话，后面的行表号，Typroa软件会跟随你换行后公式无行标号（除非换一行再重新标号），github也可以正常显示   


