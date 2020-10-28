#! /bin/bash

if [ ! -e $1 ]; then exit 0; fi

for u in `cat $1`
do
        id $u &>/dev/null
        if [ $? -eq 0 ]
        then
                echo "user $u exists"
                continue
        else
                read -p "please input $u password: " Password

                echo "gemfield" | sudo useradd $u 
                echo $u:$Password | sudo chpasswd

                id $u &>/dev/null
                if ((!$?))
                then
                        echo "$u creat succeeded!"
                else
                        echo "$u creat failed!"
                fi
        fi
done
