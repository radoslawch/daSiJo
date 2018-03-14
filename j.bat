@ECHO OFF
SET filename="%USERPROFILE%\jrnl.csv"
IF NOT EXIST %filename% ECHO day;time;data>>%filename%
SET input=%*
SET output=%input:"=""%
ECHO "%DATE:/=-%";"%TIME:,=.%";"%output%">>%filename%