#!/bin/sh

#for i in `seq 1`; do seq 1 35 | shuf -n 7 | sort -g | tr '\n' ' ' ;echo; done > my_numbers

#awk '
#BEGIN {printf("%-25s\t%-25s\t%-10s\t%-10s\n", "Winning Numbers", "My Numbers", "#s Matched", "Result")}
#NR==FNR {for (i=1; i<=NF; i++) {w[NR]=$0; wn[NR,i]=$i}; r=NR; next;}
#{
#   for (i=1; i<=r; i++) {
#      c=0;
#      for (j=1; j<=NF; j++) for (k=1; k<=NF; k++) if ($j==wn[i,k]) c++;
#      printf("%-25s\t%-25s\t%-10d\t%-10s\n", w[i], $0, c, ((c < 4) ? "lose" : "win"));
#   }
#}
#' lotto-`date +%F` my_numbers

touch mynumbers

shuf -i 1-50 -n 5 | xargs -n6 > mynumbers
shuf -i 1-10 -n 1 | xargs -n6 >> mynumbers

awk '
BEGIN {printf("%-25s\t%-25s\t%-10s\t%-10s\n", "Winning Numbers", "My Numbers", "#s Matched", "Result")}
NR==FNR {for (i=1; i<=NF; i++) {w[NR]=$0; wn[NR,i]=$i}; r=NR; next;}
{
	for (i=1; i<=r; i++) {
		c=0;
		for (j=1; j<=NF; j++)  for (k=1; k<=NF; k++) if ($j==wn[i,k]) c++;
		printf("%-25s\t%-25s\t%-10d\t%-10s\n", w[i], $0, c:, ((c < 4) ? "lose" : "win"));
	}
}
' lotto-`date +%F` mynumbers


