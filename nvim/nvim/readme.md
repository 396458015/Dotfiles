## Change the theme color scheme

   1.neovim (edit)  

   2.powershell (edit)  

   3.yazi (edit)  

   4.lazygit (copy file)  

   5.starship (edit)  

### terminal emulator

   6.alacritty (copy file)  

   7.wezterm (edit)  

## 不同term对应不同的neovim配色

   1.alacritty  
   在alacritty配置文件中设置  
```toml
   [env]
   MYSIGN = "alacritty_sign"
```
   2.wezterm  
   在wezterm general配置文件中设置  
```lua
   set_environment_variables = {
       COLORTERM = 'truecolor',
       MYSIGN = 'wezterm_sign',
   },
```
   3.windows terminal  
   在windows terminal配置文件中设置  
```json
   "defaults": 
   {
       "environment": 
       {
           "MYSIGN": "wt_sign"
       }
   },
```
   3. 在neovim设置中根据`vim.loop.os_getenv("MYSIGN")`的值是否为`alacritty_sign`、`wezterm_sign`和`wt_sign`,
   对其设置不同的配色.  
   注意:neovim根据以下命令可以查询对应的值  
   ```lua
   :lua print(os.getenv("MYSIGN"))
   :lua print(vim.loop.os_getenv("MYSIGN"))
   :echo $MYSIGN
   ```
