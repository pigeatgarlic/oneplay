@echo off
for /F "usebackq tokens=1,2 delims==" %%i in (`wmic os get LocalDateTime /VALUE 2^>NUL`) do if '.%%i.'=='.LocalDateTime.' set ldt=%%j
set ldt=%ldt:~0,4%_%ldt:~4,2%_%ldt:~6,2%_%ldt:~8,2%_%ldt:~10,2%_%ldt:~12,6%


echo %ldt%
mkdir %ldt%
cd %ldt%