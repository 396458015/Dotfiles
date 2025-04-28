#SingleInstance Force  ; 防止多次运行同一脚本

; CapsLock -> Ctrl
SetCapsLockState("AlwaysOff")  ; 禁用大写锁定
CapsLock::Ctrl                 ; 将 CapsLock 映射为 Ctrl

; 仅在以下App中启用快捷键
#HotIf WinActive("ahk_class OpusApp")            ;Word
    || WinActive("ahk_class PPTFrameClass")      ;PPT
    || WinActive("ahk_class XLMAIN")             ;Excel
    || WinActive("ahk_class Chrome_WidgetWin_1") ;Chrome
    || WinActive("ahk_class WeChatMainWndForPC") ;微信
    || WinActive("ahk_exe Origin64.exe")         ;OriginPro
    || WinActive("ahk_exe Explorer.EXE")         ;Explorer
    || WinActive("ahk_class TTOTAL_CMD")         ;Total Commander
    || WinActive("ahk_class mpv")                ;mpv
    || WinActive("ahk_exe zotero.exe")           ;Zotero
    || WinActive("ahk_exe dopus.exe")            ;Directory Opus
    || WinActive("ahk_exe speedcrunch.exe")      ;SpeedCrunch
    || WinActive("ahk_exe MATLAB.exe")           ;Matlab


!h::Send("{Left}")
!j::Send("{Down}")
!k::Send("{Up}")
!l::Send("{Right}")

!+h::Send("+{Left}")
!+j::Send("+{Down}")
!+k::Send("+{Up}")
!+l::Send("+{Right}")

#HotIf  ; 关闭作用域，防止影响其他程序


