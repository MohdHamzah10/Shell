#!/bin/bash
echo $SHELL
if [ $# -eq 0 ]; then
echo "provide file name while runung the script"
exit 1
fi
filename=$1
if [ ! -e "$filename" ]; then
echo "File '$filename' does not exist!"
exit 1
fi
echo "File info for: $filename"
ls -l "$filename"
