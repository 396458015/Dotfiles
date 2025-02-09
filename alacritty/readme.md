# 安装alacritty
 1.1 alacritty压缩包下载地址：https://github.com/alacritty/alacritty  
 1.2 添加path到系统变量：'D:\Program Files\Alacritty'  
 1.3 配置路径：'C:\Users\ThinkPad\AppData\Roaming\alacritty'  
 1.4 鼠标右键'Open Alacritty Here'  

       注册表路径： [HKEY_CLASSES_ROOT]
                       directory-background-shell     "%V"
                       directory-shell                "%V"
                       drive-shell                    "%V\"
      - 新建项'Open Alacritty Here'
      - 新建字符串值，修改字符串值名称为Icon,值为'D:\Program Files\Alacritty\Alacritty.exe'
      - 修改'command'中字符串值为'D:\Program Files\Alacritty\Alacritty.exe --working-directory "%V"'

  - 配置文件Powershell快捷命令: 'alconfig'.  

 1.5 增加alacritty对鼠标功能的支持  
    将'C:\Windows\System32'中'conhost.exe'文件替换为wezterm中的'OpenConsole.exe'  
 1.5.1 对文件夹'System32'鼠标右键'获得超级管理员权限'  
 1.5.2 将'conhost.exe'重命名为'conhost.exe_bak'  
 1.5.3 将wezterm安装路径中的'OpenConsole.exe'复制到'C:\Windows\System32'  
 1.5.4 'OpenConsole.exe'重命名为'conhost.exe'  
    注: 由于alacritty使用的是win10自带的'conhost.exe',该程序不支持鼠标,而wezterm或winodws terminal中的'OpenConsole.exe'支持。


### 优点
- 速度最快的终端
- 占用内存较低
- 配置简单

### 缺点
- 不能显示lf和lazygit内的中文
- Windowed full模式不美观,不能切换隐藏tabbar快捷键
- 不支持neovim<C-space>快捷键
- 部分快捷键映射繁琐

### 问题:  
使用使Listary打开alacritty时，yazi无法正常打开视频播放。  
解决办法:Listary自定义alacritty命令时，勾选下面的'以管理员权限执行'  


