@ECHO OFF
color 3f
setlocal enabledelayedexpansion
title �๦�ܹ�����
:load
mode con lines=7 cols=55
set z=0
SET ge=0
for /l %%i in (1,1,25) do (
  set "a%%i=  "
  set "c=!c!��"
  set "d=!d! "
)
:jdtt
set /a z+=4
for /l %%i in (1,1,3) do ping /n 1 127.1>nul
set /a ge+=1
set "a%ge%=��"
set jdt=
for /l %%i in (1,1,25) do set "jdt=!jdt!!a%%i!"
cls
echo ������������������������������������������������������
echo ��%jdt%��
echo ������������������������������������������������������
echo %d:~1%%z%��
if not "%jdt%"=="%c%" echo Loading...
if "%jdt%"=="%c%" echo OK^! &pause & goto menu
goto jdtt

pause
:menu
color 3f
mode con cols=79 lines=32
cls
echo �๦�ܹ����� Build 170306
echo ��������������������������������������������������������
echo ��*  1. ��ʱ�ػ�           *  6. Ŀ¼����             ��        
echo ��                                                    ��
echo ��*  2. ����Ŀ¼����       *  7. ����Աȡ������Ȩ     ��
echo ��                                                    ��
echo ��*  3. ��ѧ���ʽ����     *  8. ��ĳ��qq�Ի�         ��
echo ��                                                    ��
echo ��*  4. ϵͳģʽ�л�       *  9. С������             ��
echo ��                                                    ��
echo ��*  5. �ļ���ɾϵͳ����   *  10.�鿴��ɫ����         ��
echo ��������������������������������������������������������
set choice=
set /p choice=�������Ӧ��ţ��ٰ��س�����
echo ����������������������������������������������������

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
echo ����������������룡
ping 127.0.0.1 -n 2 >nul
goto menu

:1
echo.
set /p gjt=������ʱ�䣺
echo.
set /p gj=�����������ţ�sΪ�ػ���rΪ������
pause
echo ------------------
shutdown -%gj% -t %gjt%
echo.
echo ִ�����.
pause
goto menu

:2
echo.
set /p mkl1=���ԭ�ļ����Ϸŵ��˴��������س���
echo.
set /p mkl2=���ӳ����ļ��е���һ���ļ����Ϸŵ��˴��������س���
echo.
set /p mkl3=������ӳ���ļ�������
echo.
echo ------------------
cd /d %mkl2%
mklink /d %mkl3% %mkl1%
echo.
echo ִ�����.
pause
goto menu


:3
echo.
echo ��ʾ:�����������ȷ���ʽ����Ϊ*����Ϊ/
set /P n2b=��������ʽ��
set /A nb=%n2b%
echo.
echo ���Ϊ��%nb%
PAUSE
goto menu


:4
echo.
echo --------------------------
echo *   1. �򿪳���ģʽ
echo.
echo *   2. �رճ���ģʽ
echo --------------------------
set choice=
set /p choice=�������Ӧ��ţ��ٰ��س�����

if "%choice%"=="1" goto 41
if "%choice%"=="2" goto 42
echo ����������������룡
ping 127.0.0.1 -n 2 >nul
goto 4

:41
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 0 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 1 /f
echo.
echo ������ɣ�
ping 127.0.0.1 -n 2 >nul
goto menu

:42
echo.
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v HideFileExt /t REG_DWORD /d 1 /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced /v ShowSuperHidden /t REG_DWORD /d 0 /f
echo.
echo ������ɣ�
ping 127.0.0.1 -n 2 >nul
goto menu

:5
echo.
set /p sxml=������Ҫ�������ļ����У���
echo.
set /p sx=�����������ţ�+Ϊ���ϵͳ���ԣ�-Ϊȡ��ϵͳ���ԣ�
echo ------------------
attrib %sx%s %sx%h %sxml%
echo.
echo ִ�����.
pause
goto menu

:6
echo.
set /p gzml=������Ҫ�������ļ����У���
echo.
set /p gz=����������̷�������ĸ����
echo ------------------
attrib %sx%s %sx%h %sxml%
echo.
echo ִ�����.
pause
goto menu

:7
echo.
set /p ownt=���������Ŀ�꣺
echo.
set /p own=������������ͣ�1Ϊ�ļ���2Ϊ�ļ��У�
pause
echo ------------------
if "%own%"=="1" cmd.exe /c takeown /f "%ownt%"   && icacls "%ownt%" /grant administrators:F
if "%own%"=="2" cmd.exe /c takeown /f "%ownt%" /r /d y   && icacls "%ownt%" /grant administrators:F
echo.
echo ִ�����.
pause
goto menu

:8
echo.
Set /p num=������QQ����: (����n�˳�)
If /I "%num%"=="n"  goto menu
start tencent://Message/?Uin=%num% 
echo.
echo ִ�����.
pause
goto menu

:9
echo.
mshta "vbscript:createobject("wscript.shell").sendkeys("{NUMLOCK}")(close)"
echo ִ�����.
pause
goto menu

:10
echo.
pause
for %%i in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
    for %%j in (0 1 2 3 4 5 6 7 8 9 a b c d e f) do (
        if %%i neq %%j (
            cls
            echo ��ǰ��ɫ�����ǣ�color %%i%%j
            color %%i%%j
            pause
        )
    )
)
goto menu

