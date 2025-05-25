#SingleInstance Force  ; 防止多次运行同一脚本
SetCapsLockState, AlwaysOff  ; 禁用大写锁定
CapsLock::Ctrl               ; 将 CapsLock 映射为 Ctrl

; 判断是否启用快捷键
IsTargetApp() {
    return WinActive("ahk_class OpusApp")            ; Word
        or WinActive("ahk_class PPTFrameClass")      ; PPT
        or WinActive("ahk_class XLMAIN")             ; Excel
        or WinActive("ahk_class Chrome_WidgetWin_1") ; Chrome
        or WinActive("ahk_class WeChatMainWndForPC") ; 微信
        or WinActive("ahk_exe Origin64.exe")         ; OriginPro
        or WinActive("ahk_exe Explorer.EXE")         ; Explorer
        or WinActive("ahk_class TTOTAL_CMD")         ; Total Commander
        or WinActive("ahk_class mpv")                ; mpv
        or WinActive("ahk_exe zotero.exe")           ; Zotero
        or WinActive("ahk_exe dopus.exe")            ; Directory Opus
        or WinActive("ahk_exe speedcrunch.exe")      ; SpeedCrunch
        or WinActive("ahk_exe MATLAB.exe")           ; Matlab
        or WinActive("ahk_exe Listary.exe")          ; Listary
        or WinActive("ahk_exe ABQcaeG.exe")          ; Abaqus
        or WinActive("ahk_exe MathType.exe")         ; MathType
}

#If IsTargetApp()

!h::SendInput, {Left}
!j::SendInput, {Down}
!k::SendInput, {Up}
!l::SendInput, {Right}

!+h::SendInput, +{Left}
!+j::SendInput, +{Down}
!+k::SendInput, +{Up}
!+l::SendInput, +{Right}

#If  ; 关闭条件热键
