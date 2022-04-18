#!/bin/sh

#10 true or false questions

#quiz() {
    #  echo "Starting quiz..."
   #   random1=$(($RANDOM / 100))
  #    random2=$(($RANDOM / 100))
 #     result=$(($random1 + $random2))
#
    #  echo "What is $random1 + $random2?"
   #  read response
  #   if [ "$response" == $result ]
 #    then
#       echo "You got it."
    # else
   #    echo "That is incorrect."
  #   fi
 #  }
#
 #  echo "Begin math quiz? (y/n)"
#   read response
  # if [ "$response" == "y" ] || [ "$response" == "Y" ]
  # then
     #SECONDS=0
    # quiz
   #  echo "The quiz took you $SECONDS seconds to complete."
  # else
 #    echo "Exiting..."
#fi

Qnum=10
loop=0
until [ $loop = $Qnum ]
do
	sentence=`cat /home/ec2-user/ec2/questions | shuf -n1`
	statement=`echo $sentence | gawk -F " - " '{print $1 }'`

	echo "True or False: $statement"
	read response

	answer=`echo $sentence | gawk -F " - " '{print $2 }'`
	if [ $response = $answer ]; then
		echo "Correct!"
	else
		echo "Incorrect!"
	fi
	(( loop +=1))
done
	
