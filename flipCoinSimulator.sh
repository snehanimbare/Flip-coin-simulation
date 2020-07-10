#!/bin/bash

read -p "Enter Limit to win :" Limit

while [ true ]
do
        num=$((RANDOM%2))
        if [[ $num -eq 0 ]]
        then
		echo Heads
                ((Headcount++))
        else
                echo Tails
                ((Tailcount++))
        fi
        if [[ $Headcount -eq $Limit ]]
        then
                echo -e "\nHeads have been reached $Limit times"
		echo "And won by $(($Limit-$Tailcount)) points"
	        break
        fi
        if [[ $Tailcount -eq $Limit ]]
        then
                echo -e "\nTails have been reached $Limit times"
                echo "And won by $(($Limit-$Headcount)) points"
                break
        fi

done
