# 在win10和Ubuntu双系统下，实现git多帐号    
## 1 配置ssh key    
- [010_github实现一台设备多账户.md](./010_github实现一台设备多账户.md)   
- [43-linux如何实现一台设备多个github账户.md](./43-linux如何实现一台设备多个github账户.md)      
- 需要注意：在win10下和Ubuntu 下配置的信息要保持一致，这样自己用着也方便，不用每次都换名字    

## 2 统一全局区ignore文件    
- 将win10系统目录下的`.gitignore`拷贝到用户的根目录   
- 通过`gedit .gitconfig`命令看下git配置文件的内容   

```bash
[user]
	name = YangWeiBin
	email = 863255386@qq.com
[credential]
	helper = store
[push]
	default = simple
```

- 将`.gitignore`配置到`.gitconfig`目录中   
```shell 
git config --global core.excludesfile ~/.gitignore 
```
- 通过`gedit .gitconfig`命令看下git配置文件的内容，检查是否成功    

```shell 
[user]
	name = YangWeiBin
	email = 863255386@qq.com
[credential]
	helper = store
[push]
	default = simple
[core]
	excludesfile = /home/yang/.gitignore
```


## 参考资料   
1. https://blog.csdn.net/WoBenZiYou/article/details/101730699?utm_medium=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-3.channel_param&depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromMachineLearnPai2-3.channel_param    
2. 