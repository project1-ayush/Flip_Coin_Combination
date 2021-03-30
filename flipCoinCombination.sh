#!/bin/bash -x

declare -A Singlet_Comb
Head=1
i=0
freqHead=0
freqTail=0

read -p "Enter Number Of Times You Want To Flip Coin" num
echo $num

n=$num

while [[ $num -gt 0 ]]
do

randomFlip=$((RANDOM%2))

if [ $randomFlip -eq $Head ]
then
		Singlet_Comb[$i]="H"
		((freqHead++))
else
		Singlet_Comb[$i]="T"
		((freqTail++))
fi

((i++))
((num--))
done

echo "${Singlet_Comb[@]}"

hPercent=$(( ($freqHead * 100) / $n )) 
echo $hPercent

tPercent=$(( ($freqTail * 100) / $n )) 
echo $tPercent


