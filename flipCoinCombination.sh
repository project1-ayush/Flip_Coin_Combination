#!/bin/bash -x

declare -A Doublet_Comb
declare -A per_arr

HH=0
HT=1
TH=2
TT=3

i=0

freqHH=0
freqHT=0
freqTH=0
freqTT=0

read -p "Enter Number Of Times You Want To Flip Coin" num
echo $num

n=$num

while [[ $num -gt 0 ]]
do

randomFlip=$((RANDOM%4))

if [ $randomFlip -eq $HH ]
then
		Doublet_Comb[$i]="HH"
		((freqHH++))

elif [ $randomFlip -eq $HT ]
then
		Doublet_Comb[$i]="HT"
		((freqHT++))

elif [ $randomFlip -eq $TH ]
then
		Doublet_Comb[$i]="TH"
		((freqTH++))
else
		Doublet_Comb[$i]="TT"
		((freqTT++))
fi

((i++))
((num--))
done

echo "${Doublet_Comb[@]}"

hhPercent=$(( ($freqHH * 100) / $n )) 
per_arr[HH]=$hhPercent

htPercent=$(( ($freqTT * 100) / $n )) 
per_arr[HT]=$htPercent

thPercent=$(( ($freqTH * 100) / $n )) 
per_arr[TH]=$thPercent

ttPercent=$(( ($freqTT * 100) / $n )) 
per_arr[TT]=$ttPercent


echo "${!per_arr[@]}"
echo "${per_arr[@]}"

