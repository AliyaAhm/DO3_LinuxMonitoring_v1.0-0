#!/bin/bash

START_TIME=$(date +%s)
way=$1
. ./check.sh
echo "Total number of folders (including all nested ones) = $(sudo tree -a $way | grep directories | awk '{print $1}')"
# sed -n'$'p - вывод строк / NR нумерация строк
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
echo "$(sudo du -hx $way | sort -rh | head -5 | awk '{ printf "%d - %s, %s\n",NR, $2, $1}')"
echo "Total number of files = $(sudo find $way -type f | wc -l )"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $(sudo find $way -name *.conf | wc -l)"
echo "Text files = $(sudo find $way -name *.txt | wc -l)"
echo "Executable files = $(sudo find $way -type f -perm -u+rx | wc -l)"
echo "Log files (with the extension .log) = $(sudo find $way -name *.log | wc -l)"
echo "Archive files = $(sudo find $way -type f -name "*.zip" -o -name "*.7z" -o -name "*.rar" -o -name "*.tar" | wc -l)"
echo "Symbolic links = $(sudo find $way -type l | wc -l)"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
echo "$(sudo find $way -type f -exec du -Sh {} + | sort -rh | head -10 | cat -n | awk '{print $1 " - " $3 ", " $2}')"
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
exefile=$(sudo find $way -type f -perm -u+rx -exec du -Sh {} + | sort -rh | head -n 10 | awk '{print $2}')
if [[ $exefile == "" ]]
then
  MD5=0;
else
  MD5=`sudo md5sum $exefile | awk '{print $1}'`
fi
exe=$(sudo find $way -type f -executable -exec du -Sh {} + | sort -rh | head -n 10 | awk '{printf "%d - %s, %s,\n",NR, $2, $1}')
paste -d' ' <(echo "$exe") <(echo "$MD5")
END_TIME=$(date +%s)
DIFF=$(( $END_TIME - $START_TIME ))
echo "Script execution time (in seconds) = $DIFF"  