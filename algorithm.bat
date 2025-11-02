@echo off
REM This script is the Windows Batch equivalent of your algorithm.sh

REM The 'tee' command is not native to Windows.
REM We first echo to the console, then redirect the same text to the file.

echo "MODIFY THE ALGORITHM TO PRODUCE A MORE PRECISE CALCULATION OF PI"
echo "MODIFY THE ALGORITHM TO PRODUCE A MORE PRECISE CALCULATION OF PI" > report.txt

echo "3.14159"
echo "3.14159" >> report.txt

REM UNCOMMENT THE FOLLOWING LINE TO GET A MORE PRECISE CALCULATION OF PI. ALSO REMOVE THE PREVIOUS ECHO STATEMENTS.
REM
REM !! WARNING !!
REM The 'bc' command is a Linux tool and WILL NOT work in Windows cmd.
REM You would need to use a different method (like a Python script)
REM to perform this calculation on Windows.
REM
REM echo "scale=1000; 4*a(1)" | bc -l > report.txt
