Windows 10  
PATH: 'C:\Users\ThinkPad\AppData\Roaming\lazygit'

查看git版本
git --version

更新git
git update-git-for-windows


提交commit后，需要撤回，并保留修改的代码:
git reset --soft HEAD^

HEAD^的意思是上一个版本，也可以写成HEAD~1
如果你进行了2次commit，想都撤回，可以使用HEAD~2
lazygit无法执行这条语句，只能手动命令行输入执行
