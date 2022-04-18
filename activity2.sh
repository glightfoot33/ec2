#!/bin/sh

now=$( date +%Y%m%d%H%M )
for pathname in ./*.file; do
	mv "$pathname" "${pathname%.file}.$now.file"
done

