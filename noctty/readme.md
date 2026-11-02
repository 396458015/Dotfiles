# Noctty

Windows 终端，默认使用 PowerShell 7。下列快捷键以个人 `config.ghostty` 配置为准。

## 主页

[GitHub：amanthanvi/noctty](https://github.com/amanthanvi/noctty)

## 安装

在已安装 Scoop 的 PowerShell 中执行：

```powershell
scoop bucket add noctty https://github.com/amanthanvi/scoop-noctty
scoop install noctty/noctty
```

## 配置文件

当前电脑的配置路径：

```text
C:\Users\ThinkPad\AppData\Local\noctty\config.ghostty
```

通用路径：`%LOCALAPPDATA%\noctty\config.ghostty`。

在 PowerShell 中编辑：

```powershell
notepad "$env:LOCALAPPDATA\noctty\config.ghostty"
```

修改后按 **Ctrl+Shift+,** 重新加载；部分设置需要新建标签页或重启后生效。

## 常用快捷键

配置使用 `keybind = clear` 清除了默认绑定；以下为个人配置中设置的快捷键。

| 快捷键 | 功能 |
| --- | --- |
| Ctrl+Shift+, | 重新加载配置 |
| Ctrl+, | 打开配置入口 |
| Ctrl+Shift+P | 打开命令面板（不是 Ctrl+P） |
| Alt+; | 进入 Vim 按键模式 |
| Ctrl+= / Ctrl+- | 增大 / 缩小字号，每次 1 pt |
| Ctrl+0 | 恢复默认字号 14 |
| Ctrl+C | 有选区时复制纯文本，否则交给当前终端程序处理 |
| Ctrl+V | 粘贴 |
| Ctrl+Shift+C / Ctrl+Shift+V | 备用复制 / 粘贴 |
| Alt+N | 新建标签页 |
| Alt+1～8 | 切换至第 1～8 个标签页 |
| Alt+H/J/K/L | 向终端发送左 / 下 / 上 / 右方向键 |
| Ctrl+Shift+F | 搜索终端输出 |
| Ctrl+Shift+I / Ctrl+Shift+U | 向上 / 向下滚动一行 |

如需 F11 切换全屏，在 `keybind = clear` 后添加：

```ini
keybind = f11=toggle_fullscreen
```

### 打开 WSL

按 **Ctrl+Shift+P**，输入 **wsl**，选择对应的 WSL / Ubuntu 配置并按 Enter，在新标签页打开。

### 分屏

| 快捷键 | 功能 |
| --- | --- |
| Alt+反斜杠（`\`） | 自动分屏 |
| Ctrl+Shift+H/J/K/L | 焦点移至左 / 下 / 上 / 右窗格 |
| Alt+方向键 | 调整分屏尺寸，每次 10 像素 |
| Ctrl+S → Ctrl+J | 向下分屏 |
| Ctrl+S → Ctrl+L | 向右分屏 |
| Ctrl+S → Space | 均衡分屏尺寸 |
| Ctrl+S → Z | 放大 / 还原当前窗格 |

`→` 表示先按前一组按键，松开后再按后一组。窗格放大与窗口全屏不同。

### Vim 按键模式

按 **Alt+;** 进入，按 **Esc、q 或 i** 退出。这是终端浏览模式，不是 Vim 编辑器。

| 按键 | 功能 |
| --- | --- |
| j / k | 向下 / 向上滚动一行 |
| Ctrl+D、Ctrl+F 或 Shift+J | 向下滚动一页 |
| Ctrl+U、Ctrl+B 或 Shift+K | 向上滚动一页 |
| g → g / Shift+G | 滚动到顶部 / 底部 |
| / | 开始搜索 |
| n / Shift+N | 下一个 / 上一个搜索结果 |
| p / Shift+P | 下一个 / 上一个 Shell 提示符，需要 Shell 集成支持 |
| y 或 v | 复制已有选区，不会自动进入可视选择模式 |
| e | 导出历史输出为纯文本并打开 |
| Shift+;（冒号） | 打开命令面板 |

该模式中未定义的按键会被忽略；需要正常输入时先退出模式。

## 配置检查

```powershell
# 检查配置错误
noctty +validate-config

# 查看默认枚举的等宽字体
noctty +list-fonts
```

注意：`window-show-tab-bar = never` 会始终隐藏标签栏，多个标签页时也不显示。
