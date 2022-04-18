#!/bin/sh

touch lotto-`date +%F`

shuf -i 1-50 -n 5 | xargs -n6 > lotto-`date +%F` 
shuf -i 1-10 -n 1 | xargs -n6 >> lotto-`date +%F`

