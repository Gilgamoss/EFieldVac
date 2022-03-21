

#!/bin/bash
echo -------Droptest-------


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


./grip
if [ $? -ne 0 ] 

then
   echo  "Reseting process"
   exit 1
fi


./shothpcamera
if [ $? -ne 0 ] 
then
   echo  "Reseting process"
   exit 1
fi


./closehpcamera
if [ $? -ne 0 ] 

then
   echo  "Reseting process"
   exit 1
fi


./closecamera
if [ $? -ne 0 ] 

then
   echo  "Reseting process"
   exit 1
fi


echo Process end



