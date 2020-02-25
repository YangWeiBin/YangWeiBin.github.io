# 021-Markdown-上下型公式写法  
---

1. 借助`mathop`函数     
	- $\mathop{\theta}\limits_{i=1}^2$    
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $\mathop{\theta}\limits_{}^2$   
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $\mathop{\theta}\limits_{i=1}$     
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $ \mathop{t_r t_s}\limits_{ }^{\frown} $  
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $\mathop{R  \bowtie S} \limits_{A \theta B} $   
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $ \mathop{\theta}\limits_{i=1}^2 $    
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
2. 借助`overset`和`underset`函数   
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字    
	- $\underset{2}{\theta}$    
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字  
	- $\underset{A \theta B}{R  \bowtie S} $  
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   
	- $ \overset{\frown}{t_r t_s}$    
	- 参照文字参照文字参照文字参照文字参照文字参照文字参照文字   

3. 总结  
	- 对于上下都有的推荐`mathop`函数    
	- 对于只有上或者只有下的推荐`overset`和`underset`函数  
	- 因为只有上或者只有下用`mathop`函数会导致间距宽的视觉问题  

