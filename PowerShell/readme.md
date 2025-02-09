# 安装powershell
    双击ps安装程序.

# 配置powershell
  1. powershell配置文件'Microsoft.PowerShell_profile.ps1'  
     安装路径：'C:\Program Files\PowerShell\7'  
     配置文件路径：'C:\Users\ThinkPad\Documents\PowerShell\Microsoft.PowerShell_profile.ps1'  
     快捷命令'psconfig'  
  2. 设置powershell主题  
     下载"https://github.com/catppuccin/powershell"主题到"C:\Users\ThinkPad\Documents\PowerShell\Modules\Catppuccin"
  3. 安装scoop, 通过scoop安装插件  
     3.1 Open powershell  
     3.2 Input 'Set-ExecutionPolicy RemoteSigned -scope CurrentUser' 输入y  
     3.3 Input 'iwr -useb https://gitee.com/glsnames/scoop-installer/raw/master/bin/install.ps1 | iex'  
  4. 安装 Icons  
     通过scoop安装 (推荐),Open powershell  
         'scoop bucket add extras'  
         'scoop install terminal-icons'  
     或通过PSGallery安装  
         Open powershell  
         Input 'Install-Module -Name Terminal-Icons -Repository PSGallery -Force'  
  5. 通过scoop安装tree-sitter,neovim中treesitter的latex需要  
         'scoop install tree-sitter'  
  6. 通过scoop安装winfetch  
         'scoop bucket add extras'  
         'scoop install winfetch'  
     * alias wf (winfetch)  
     * 配置文件路径:'C:\Users\ThinkPad\.config\winfetch\config.ps1'  
     * 配置文件快捷键:'wfconfig'  
     * winfetch仓库:https://github.com/lptstr/winfetch  
     * winfetch安装介绍:https://github.com/lptstr/winfetch/wiki/Installation  
  7. 安装 starship  
     7.1 Open powershell  
     7.2 Input  'scoop install starship'(推荐) 或者 'winget install starship'  
     7.3 系统变量,设置变量名:'STARSHIP_CONFIG', 变量值:'C:\Users\ThinkPad\Documents\PowerShell\starship.toml'  
     7.4 配置文件'starship.toml'.  
         路径：'C:\Users\ThinkPad\Documents\PowerShell\starship.toml'  
     7.5 快捷命令'ssconfig'  
  8. 安装fzf  
     8.1 Open powershell  
     8.2 Input 'scoop install fzf'  
     快捷键 ctrl+f ctrl+g  
     注意：fzf不能正确获得名称或路径含中文字符，将powershell设置为utf8格式可以解决该问题.  
  9. 安装bat  
     9.1 Open powershell  
     9.2 Input 'scoop install bat'  
     9.3 'bat cache --build'  说明网址'https://github.com/sharkdp/bat#adding-new-syntaxes--language-definitions'
     use 'bat --list-languages' to check if the new languages are available
     if you ever want to go back to the default setting, 'bat cache --clear'
     配置文件路径:'C:\Users\ThinkPad\AppData\Local\bat'
     分别在powershell配置文件添加代码预览bat的配置  
     采用bat实现fzf的代码预览含高亮.ps:yazi自身集成了代码预览  
     查看bat配色主题,'bat --list-themes'
  10. install Directory jumper z (通过scoop)  
     10.1 Open powershell  
     10.2 Input 'scoop install z'  
  11. 由于版本自带命令提示插件'PSReadLine',无需安装.  
  12. 安装yazi.  
     12.1. Download Git from https://git-scm.com/download/win.  
     12.2. Append C:\Program Files\Git\usr\bin to the PATH environment variable, note that depends on your Git installation path.  
     例如将D:\Program Files\Git\usr\bin加入到环境变量，同时加入到'用户变量'和'系统变量'的path  
     12.3. scoop install yazi  
     12.4 for zip/rar preview  
        scoop install unar  
     12.5 for JSON preview  
        scoop install jq  
     12.6 search file name  
        scoop install fd  
     12.7 search file content  
        scoop install ripgrep  
     12.8 fuzzy search file  
        scoop install fzf  
     - 配置文件路径  
     'C:\Users\ThinkPad\AppData\Roaming\yazi\config'  
     - 自动代码预览，无需安装bat;wezterm自动图片预览  
     - 若要通过mpv播放视频,需要将mpv的安装路径增加到环境变量中的'用户变量'  
       如D:\Program Files\mpv-x86_64-20220424-git-9d133eb加入到'用户变量'  

# usage
## z
  - cd xx/xx/xx/a1
  - cd yy/yy/yy/b1
  - z a1
  - z b1
  - z a
  - z b

## scoop

   - 搜索软件  
     scoop search [packageName]

   - 安装软件  
     scoop install [packageName]

   - 指定安装版本  
     scoop install [packageName]@version   

   - 移除软件  
     scoop uninstall [packageName]

   - Show status and check for new app versions  
     scoop status  

   - To update all installed packages:  
     scoop update *

   - To list installed packages:  
     scoop list

   - To display information about a package:  
     scoop info [packageName]

   - To list all known buckets (a bucket is an application repository):  
     scoop bucket known

   - 显示关联的bucket
     scoop bucket list

   - To add a bucket by its alias or a Git repository URL:  
     scoop bucket add [bucket]

   - 删除仓库  
     scoop bucket rm main  

   --

   - To install scoop (requires powershell >= 3):  
   iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

   - To uninstall scoop:  
   scoop uninstall scoop

   - To update scoop:  
   scoop update

   - To install several utils at once:  
   scoop install 7zip curl sudo git openssh coreutils grep sed less

   - To install several programming languages at once:  
   scoop install python ruby go nodejs

   - To install php (see https://github.com/lukesampson/scoop/wiki/Custom-PHP-configuration for persisting php.ini settings through updates):  
   scoop install php

   - To install an app (Git) globally:  
   sudo scoop install git --global

   - To update a globally installed app (Git):  
   sudo scoop update git --global

   - Cleanup apps by removing old versions
   scoop cleanup *

   - Show or clear the download cache
   scoop cache rm *

## winfetch
  - wf (winfetch)

## yazi

- a XX    创建XX文件  
- a XX/   创建XX文件夹  

---
- y    copy  
- d    cut  
- x    delete to 回收站  
- X    永久删除  
- r    rename  
       可以通过多选后，r重命名，批量化修改名字  

---
- g XX         移动到已存dir  
- g <space>    目录跳转  

---
- cd   copy parent directory  
- <A-PageUp>    预览上移动  
- <A-PageDown>  预览下移动  

---
- S  rg搜索文件内容  
- s  fd搜索文件名  
- Z  fzf模糊搜索  

---
- o        打开  
- Enter    打开  
- O        选择打开方式  
- C-Enter  选择打开方式  
  Reveal   用'我的电脑'打开  

将scoop中的main源从gitee切换至github  
"scoop bucket list"  
"scoop bucket rm main"  
"scoop bucket add main https://github.com/ScoopInstaller/Main"  





