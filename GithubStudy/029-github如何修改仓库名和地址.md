# 029 github如何修改仓库名和地址          
---

- 将仓库名xxsy改为XXsy   

## 1 先修改远程仓库名   
settings -> repository name -> rename 

## 2 修改本地仓库名  
xxsy -> XXsy   

## 3 修改仓库地址完成对接  
### 3.1 直接修改([方法一][1])  
```bash
cd XXsy  
git remote set-url origin https://github.com/YangWeiBin/XXsy.git    
## 查看是否成功  
git remote -v
## origin  https://github.com/YangWeiBin/XXsy.git (fetch)
## origin  https://github.com/YangWeiBin/XXsy.git (push)
```

### 3.2 先删除，再添加([方法二][1])   
```bash
git remote rm origin
git remote add origin https://github.com/YangWeiBin/XXsy.git 
```

## 4 通过以上修改进行提交(git push)可能还会遇到如下问题    
### 4.1 遇到问题   
```bash
fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin master
```
### 4.2 出现的原因   
- 当前分支建立远程上游分支    

### 4.3 [解决方法][3]   
```bash
git push --set-upstream origin master
```

- 中间可能需要重新输入github账号和密码    
## 5 总结  
1. 推荐使用第2种方法，简便快捷    
2. **意外收获：本地仓库和远程仓库可以使用不同的名字**   







## 6 参考资料    

[1]: https://blog.csdn.net/Chengliangyao/article/details/84186029?depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2&utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2
[2]: https://blog.csdn.net/weixin_30872789/article/details/97228608?depth_1-utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2&utm_source=distribute.pc_relevant.none-task-blog-BlogCommendFromBaidu-2
[3]:https://segmentfault.com/a/1190000019925800
