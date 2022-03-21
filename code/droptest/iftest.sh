

#!/bin/bash


read -p "Enter a number: " VAR

if [ "$VAR" -gt "10" ]
then

    echo "greater than 10"

elif [ "$VAR" -eq "10" ]
then
    echo "The variable is equal 10"

else
    echo "less than 10"

fi




