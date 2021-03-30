#!/bin/bash -x

declare -A Triplet_Comb
declare -A per_arr

HHH=0
HHT=1
HTH=2
HTT=3
TTT=4
TTH=5
THT=6
THH=7

i=0

freqHHH=0
freqHHT=0
freqHTH=0
freqHTT=0
freqTTT=0
freqTTH=0
freqTHT=0
freqTHH=0

read -p "Enter Number Of Times You Want To Flip Coin" num
echo $num

n=$num

while [[ $num -gt 0 ]]
do

randomFlip=$((RANDOM%8))

if [ $randomFlip -eq $HHH ]
		then
		Triplet_Comb[$i]="HHH"
		((freqHHH++))
elif [ $randomFlip -eq $HHT ]
		then
		Triplet_Comb[$i]="HHT"
		((freqHHT++))
elif [ $randomFlip -eq $HTH ]
		then
		Triplet_Comb[$i]="HTH"
		((freqHTH++))
elif [ $randomFlip -eq $HTT ]
		then
		Triplet_Comb[$i]="HTT"
		((freqHTT++))
elif [ $randomFlip -eq $TTT ]
		then
		Triplet_Comb[$i]="TTT"
		((freqTTT++))
elif [ $randomFlip -eq $TTH ]
		then
		Triplet_Comb[$i]="TTH"
		((freqTTH++))
elif [ $randomFlip -eq $THT ]
		then
		Triplet_Comb[$i]="THT"
		((freqTHT++))
else
		Triplet_Comb[$i]="THH"
		((freqTHH++))

fi

((i++))
((num--))

done

echo "${Triplet_Comb[@]}"

hhhPercent=$(( ($freqHHH * 100) / $n )) 
per_arr[hhh]=$hhhPercent

hhtPercent=$(( ($freqHHT * 100) / $n )) 
per_arr[hht]=$hhtPercent

hthPercent=$(( ($freqHTH * 100) / $n )) 
per_arr[HTH]=$hthPercent

httPercent=$(( ($freqHTT * 100) / $n )) 
per_arr[HTT]=$httPercent


tttPercent=$(( ($freqTTT * 100) / $n )) 
per_arr[TTT]=$tttPercent

tthPercent=$(( ($freqTTH * 100) / $n )) 
per_arr[TTH]=$tthPercent

thhPercent=$(( ($freqTHH * 100) / $n )) 
per_arr[THH]=$thhPercent


thtPercent=$(( ($freqTHT * 100) / $n )) 
per_arr[THT]=$thtPercent


echo "${!per_arr[@]}"
echo "${per_arr[@]}"

