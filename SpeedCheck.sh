#!/bin/bash

Speed() {
    local anu=$(ping google.com -c 1 | grep -o "time=[0-9]*")
    local NUMBER=$(echo ${anu//[^0-9]/})
    echo $NUMBER
}

echo -e "Enter Number of Test Case : \c"
read n 

while (( n-- ))
do
    t=$(Speed)
    
    if (( $t < 20 ))
    then
        echo -e "\e[92mSuper Sonic!" #light green

    elif (( $t > 20 && $t < 70 ))
    then
        echo -e "\e[32mStrong!" #green

    elif (( $t > 70 && $t < 150 ))
    then
        echo -e "\e[97mok" #white

    elif (( $t > 150 && $t < 250 ))
    then
        echo -e "\e[34mSlow but ok"

    elif (( $t > 250 && $t < 500 ))
    then
        echo -e "\e[34mSlow"

    else
        echo -e "\e[31mPoor Connection..."
    
    fi
    
done
echo -e "\e[39mDone"
