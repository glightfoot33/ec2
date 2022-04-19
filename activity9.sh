#!/bin/sh


echo "Enter the file name: "
read FILE

if [ -f "$FILE" ]; then
	echo "Error: $FILE exists."
else
	touch $FILE
fi

