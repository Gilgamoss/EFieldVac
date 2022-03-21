

#!/bin/bash

echo -------Springtest-------

./pump
if [ $? -ne 0 ] 

then
   echo  "Reseting process"
   exit 1
fi

./drivegen
if [ $? -ne 0 ] 

then
   echo  "Reseting process"
   exit 1
fi



echo Process end


