#! /bin/bash

read -p "please input target num: " -n 4 TARGET

T=0
C=0
while [ $T -ne $TARGET ]
do
        read -p "please input T: " -n 4 T
        if [ $T -lt $TARGET ]
        then
                echo "too small"
        else
                echo "too large"
        fi
        let C=C+1
done
echo "you are right, TARGET=$T, total cost $C times"
