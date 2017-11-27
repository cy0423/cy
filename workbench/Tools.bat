@ECHO OFF
color 3f
setlocal enabledelayedexpansion
title 多功能工具箱
:load
mode con lines=7 cols=55
set z=0
SET ge=0
for /l %%i in (1,1,25) do (
  set "a%%i=  "
  set "c=!c!▉"
  set "d=!d! "
)
:jdtt
set /a z+=4
for /l %%i in (1,1,3) do ping /n 1 127.1>nul
set /a ge+=1
set "a%ge%=▉"
set jdt=
for /l %%i in (1,1,25) do set "jdt=!jdt!!a%%i!"
cls
echo ┏━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo ┃%jdt%┃
echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo %d:~1%%z%﹪
if not "%jdt%"=="%c%" echo Loading...
if "%jdt%"=="%c%" echo OK^! &pause & goto menu
goto jdtt

pause
:menu
color 3f
mode con cols=79 lines=32
cls
echo 多功能工具箱 Build 170306
echo ┏━━━━━━━━━━━━━━━━━━━━━━━━━━┓
echo ┃*  1. 定时关机           *  6. 目录挂载             ┃        
echo ┃                                                    ┃
echo ┃*  2. 创建目录链接       *  7. 管理员取得所有权     ┃
echo ┃                                                    ┃
echo ┃*  3. 数学表达式运算     *  8. 与某人qq对话         ┃
echo ┃                                                    ┃
echo ┃*  4. 系统模式切换       *  9. 小键盘锁             ┃
echo ┃                                                    ┃
echo ┃*  5. 文件添删系统属性   *  10.查看颜色代码         ┃
echo ┗━━━━━━━━━━━━━━━━━━━━━━━━━━┛
set choice=
set /p choice=请输入对应序号，再按回车键：
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━

if "%choice%"=="1" goto 1
if "%choice%"=="2" goto 2
if "%choice%"=="3" goto 3
if "%choice%"=="4" goto 4
if "%choice%"=="5" goto 5
if "%choice%"=="6" goto 6
if "%choice%"=="7" goto 7
if "%choice%"=="8" goto 8
if "%choice%"=="9" goto 9
if "%choice%"=="10" goto 10
echo 输入错误，请重新输入！
ping 127.0.0.1 -n 2 >nul
goto menu

:1
echo.
set /p gjt=请输入时间：
echo.
set /p gj=请输入操作序号，s为关机，r为重启：
pause
echo ------------------
shutdown -%gj% -t %gjt%
echo.
echo 执行完毕.
pause
goto menu

:2
echo.
set /p mkl1=请把原文件夹拖放到此处，并按回车：
echo.
set /p mkl2=请把映射的文件夹的上一层文件夹拖放到此处，并按回车：
echo.
set /p mkl3=请输入映射文件夹名：
echo.
echo ------------------
cd /d %mkl2%
mklink /d %mkl3% %mkl1%
echo.
echo 执行完毕.
pause
goto menu


:3
echo.
echo 提示:请务必输入正确表达式！乘为*，除为/
set /P n2b=请输入表达式：
set /A nb=%n2b%
echo.
echo 结果为：%nb%
PAUSE
goto menu


:4
echo.
echo --------------------------
echo *   1. 打开超级模式
echo.
echo *   2. 关闭超级模式
echo --------------------------
set choice=
set /p choice=请输入对应序号，再按回车键：

if "%choice%"=="1" goto 41
if "%choice%"=="2" goto 42
echo 输入错误，请重新输入！
ping 127.0.0.1 -n 2 >nul
goto 4

:41
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f
echo.
echo 操作完成！
ping 127.0.0.1 -n 2 >nul
goto menu

:42
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 0 /f
echo.
echo 操作完成！
ping 127.0.0.1 -n 2 >nul
goto menu

:5
echo.
set /p sxml=请拖入要操作的文件（夹）：
echo.
set /p sx=请输入操作序号，+为添加系统属性，-为取消系统属性：
echo ------------------
attrib %sx%s %sx%h %sxml%
echo.
echo 执行完毕.
pause
goto menu

:6
echo.
set /p gzml=请拖入要操作的文件（夹）：
echo.
set /p gz=请输入操作盘符（仅字母）：
echo ------------------
attrib %sx%s %sx%h %sxml%
echo.
echo 执行完毕.
pause
goto menu

:7
echo.
set /p ownt=请拖入操作目标：
echo.
set /p own=请输入操作类型，1为文件，2为文件夹：
pause
echo ------------------
if "%own%"=="1" cmd.exe /c takeown /f "%ownt%"   && icacls "%ownt%" /grant administrators:F
if "%own%"=="2" cmd.exe /c takeown /f "%ownt%" /r /d y   && icacls "%ownt%" /grant administrators:F
echo.
echo 执行完毕.
pause
goto menu

:8
echo.
Set /p num=请输入QQ号码: (输入n退出)
If /I "%num%"=="n"  goto menu
start tencent://Message/?Uin=%num% 
echo.
echo 执行完毕.
pause
goto menu

:9
echo.
mshta "vbscript:createobject("wscript.shell").sendkeys("{NUMLOCK}")(close)"
echo 执行完毕.
pause
goto menu

:10
echo.
pause
for %%i in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
    for %%j in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
        if %%i neq %%j (
            cls
            echo 当前颜色代码是：color %%i%%j
            color %%i%%j
            pause
        )
    )
)
goto menu

