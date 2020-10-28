#! /bin/bash

read -p "please input your char: " CH

case $CH in
        [a-zA-Z])
                echo "the char you input is a letter"
                ;;
        [0-9])
                echo "the char you input is a number"
                ;;
        *)
                echo "the char you input is a control char"
                ;;
esac
