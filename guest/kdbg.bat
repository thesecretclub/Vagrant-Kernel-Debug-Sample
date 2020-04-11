bcdedit /debug on
bcdedit /dbgsettings net hostip:192.168.56.1 port:49152 key:1.1.1.1


COPY C:\vagrant\guest\onboot.bat C:\onboot.bat
schtasks /create /sc onstart /tr "C:\onboot.bat" /tn vagrantonboot /ru SYSTEM /f


shutdown /r /t 0

