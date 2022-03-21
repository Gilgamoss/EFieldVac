
#!/bin/bash

# prompt for the user to input a number
read -p "Geben Sie eine Zahl zur Überprüfung ein: " n


# check if the number greater than 1
if [ "$n" -gt "1" ]
then
	# check if the number is less than 100
	if [ "$n" -lt 100 ]
	then
		echo "Die Nummer ist im Wertebereich [1, 100]"
	else
		echo "Die Nummer ist größer als 100!"
	fi
else
	echo "Die Nummer ist kleiner als 1!"

fi
