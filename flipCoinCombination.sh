#!/bin/bash -x

Head=1

randomFlip=$((RANDOM%2))

if [ $randomFlip -eq $Head ]
then
		echo "Head"
else
		echo "Tail"
fi
