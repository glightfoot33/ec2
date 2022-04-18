#!/bin/sh

echo "$USER"
date +"%d-%m-%y"
date "+%T"
pwd
ls | wc -l
du -sh * | sort -rh | head -1

