# daSiJo
Damn Simple Journal

Inspired by [jrnl](http://jrnl.sh/) but not needing such rich features (and needing them on Windows in the most simple way) I've decided to create this simple batch file.

Just place it in you home folder, open *cmd*, input *j Whatever your journal entry should contain* and see your journal csv file being created or appended with input entry and a current date.

I use it to keep track of what I'm doing each day.

## Example of use

Input

```
j Test journal entry
j And another one
```

Output

```
day;time;data
"2018-03-14";"23:43:01.38";"Test journal entry"
"2018-03-14";"23:43:04.39";"And another one"
```

Just like that.