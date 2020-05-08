# 批量更新    
1. 可以实现批量更新多个仓库    
2. 可以将更新的备注的日期改了   
3. 把它复制到每个仓库可以实现一键更新   





```bash
set THISDATETIME=%DATE:~0,4%%DATE:~5,2%%DATE:~8,2%%TIME:~0,2%%TIME:~3,2%%TIME:~6,2%
echo  %THISDATETIME%

git add .
git commit -m %THISDATETIME%
git push

```