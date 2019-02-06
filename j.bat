@ECHO OFF
:: set old codepage number to a variable
FOR /F "tokens=*" %%g IN ('chcp') do (SET OLDCODEPAGE=%%g)
:: as the chcp output is like "Active code page: codepage_number"
:: remove letters, colon and space
SET OLDCODEPAGE=%OLDCODEPAGE:*: =%
:: set new codepage to UTF-8
chcp 65001 > nul
:: set location and name for journal file
SET filename="%USERPROFILE%\jrnl.csv"
:: create a journal file by writing header to it if such a file does not exist
IF NOT EXIST %filename% ECHO day;time;data>>%filename%
:: get the input arguments
SET input=%*
:: put the input into doublequotes and save as the output
SET output=%input:"=""%
:: write the output to a file with additional columns
ECHO "%DATE:/=-%";"%TIME:,=.%";"%output%">>%filename%
:: recover the original codepage
chcp %OLDCODEPAGE% > nul