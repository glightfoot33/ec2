#!/bin/sh

echo "Enter the file name: "
read FILE
echo "Enter number of lines you wish to write: "
read LINE

if [ -f "$FILE" ]; then
	echo "Error: $FILE exists."
else
	touch $FILE;
	RANDOM=$$
	for i in `seq "$LINE"`
	do
		echo $RANDOM >> $FILE
	done
fi

