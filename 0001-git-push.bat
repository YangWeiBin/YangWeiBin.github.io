@echo off
set GMT=GMT+8
set DATEINTERAL=/
set TIMEINTERAL=:
set SPACE=" "
set ZERO=0
:: 1 ��ȡ����
set THISDATE=%DATE:~0,4%%DATEINTERAL%%DATE:~5,2%%DATEINTERAL%%DATE:~8,2%
:: 2 ���Сʱ��һλ��H�Ļ��������Ϊ0H
set ThISHOUR01=%TIME:~0,1%
if "%ThISHOUR01%" == " "  (
	set ThISHOUR01=%ZERO%%TIME:~1,1%
)else  (
	set ThISHOUR01=%TIME:~0,2%
)
:: 3 �޸ĺ��ʱ�䴮
set ThISTIME=%ThISHOUR01%%TIMEINTERAL%%TIME:~3,2%%TIMEINTERAL%%TIME:~6,2%
:: 4 ��Ϻ������ʱ�䴮
set ThISDATETIME=%THISDATE%%SPACE%%ThISTIME%
set RESULT=%ThISDATETIME%
git add .
git commit -m %RESULT%
git push
pause