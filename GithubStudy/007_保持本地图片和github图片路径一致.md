#         github 本地图片路径和github网页路径不一样，导致网页看不到图片怎么处理？

—————————————————————————————————————————————————————

### 采用相对路径解决此类问题，相对路径的用法如下：

#### 比如你当前路径为/var/log下，现在想要进到/usr目录下

可以命令为

cd ../../usr   #通过[相对路径](https://www.baidu.com/s?wd=%E7%9B%B8%E5%AF%B9%E8%B7%AF%E5%BE%84&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)先退到/var目录下，再退到/下，最后进如/usr下

#### 相当路径是相对[当前目录](https://www.baidu.com/s?wd=%E5%BD%93%E5%89%8D%E7%9B%AE%E5%BD%95&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)来说的。

#### ../        #表示上级目录

#### ./        #表示[当前目录](https://www.baidu.com/s?wd=%E5%BD%93%E5%89%8D%E7%9B%AE%E5%BD%95&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)下

#### ./XXX    #表示[当前目录](https://www.baidu.com/s?wd=%E5%BD%93%E5%89%8D%E7%9B%AE%E5%BD%95&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)下的XXX文件或者XXX目录

#### 使用[相对路径](https://www.baidu.com/s?wd=%E7%9B%B8%E5%AF%B9%E8%B7%AF%E5%BE%84&tn=SE_PcZhidaonwhc_ngpagmjz&rsv_dl=gh_pc_zhidao)不一定要退到目录下

#### 如当前路径为/var/log下，想要到/var/run/下

#### cd ../run   #先退到/var目录，然后进入/var目录下的run目录 

—————————————————————————————————————————————————————

#### 对于本目录而言，添加图片均采用相对路径即可：

#### 例如：./img/XXX.png 即可！