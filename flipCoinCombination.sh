#!/bin/bash -x

declare -a Coin_arr

HHH=0
HHT=1
HTH=2
HTT=3
TTT=4
TTH=5
THT=6
THH=7
H=8
T=9
HH=10
TT=11
HT=12
TH=13

i=0

freqHHH=0
freqHHT=0
freqHTH=0
freqHTT=0
freqTTT=0
freqTTH=0
freqTHT=0
freqTHH=0
freqH=0
freqT=0
freqHH=0
freqTT=0
freqHT=0
freqTH=0

read -p "Enter Number Of Times You Want To Flip Coin" num
echo $num

n=$num

while [[ $num -gt 0 ]]
do

randomFlip=$((RANDOM%14))

if [ $randomFlip -eq $HHH ]
		then
		((freqHHH++))
		Coin_arr[0]=$freqHHH
		
elif [ $randomFlip -eq $HHT ]
		then
		((freqHHT++))
		Coin_arr[1]=$freqHHT
		
elif [ $randomFlip -eq $HTH ]
		then
		((freqHTH++))
		Coin_arr[2]=$freqHTH
		
elif [ $randomFlip -eq $HTT ]
		then
		((freqHTT++))
		Coin_arr[3]=$freqHTT
		
elif [ $randomFlip -eq $TTT ]
		then
		((freqTTT++))
		Coin_arr[4]=$freqTTT
		
elif [ $randomFlip -eq $TTH ]
		then
		((freqTTH++))
		Coin_arr[5]=$freqTTH
		
elif [ $randomFlip -eq $THT ]
		then
		((freqTHT++))
		Coin_arr[6]=$freqTHT
		
elif [ $randomFlip -eq $THH ]
		then
		((freqTHH++))
		Coin_arr[7]=$freqTHH
		
elif [ $randomFlip -eq $H ]
		then
		((freqH++))
		Coin_arr[8]=$freqH
		
elif [ $randomFlip -eq $T ]
		then
		((freqT++))
		Coin_arr[9]=$freqT
		
elif [ $randomFlip -eq $HH ]
		then
		((freqHH++))
		Coin_arr[10]=$freqHH
		
elif [ $randomFlip -eq $TT ]
		then
		((freqTT++))
		Coin_arr[11]=$freqTT
		
elif [ $randomFlip -eq $HT ]
		then
		((freqHT++))
		Coin_arr[12]=$freqHT
		
else
		((freqTH++))
		Coin_arr[13]=$freqTH
		

fi

((num--))

done

echo "${Coin_arr[@]}"
echo "${!Coin_arr[@]}"


great=${Coin_arr[0]}
great_index=0

for((i=0;i<14;i++))
do
	if [ ${Coin_arr[$i]} -ge $great ]
	then
			great=${Coin_arr[$i]}
			great_index=$i	
	fi
done

if [ $great_index -eq 0 ]
		then
		echo "The Winning Combination is HHH"
elif [ $great_index -eq 1 ]
		then
		echo "The Winning Combination is HHT"
elif [ $great_index -eq 2 ]
		then
		echo "The Winning Combination is HTH"
elif [ $great_index -eq 3 ]
		then
		echo "The Winning Combination is HTT"
elif [ $great_index -eq 4 ]
		then
		echo "The Winning Combination is TTT"
elif [ $great_index -eq 5 ]
		then
		echo "The Winning Combination is TTH"
elif [ $great_index -eq 6 ]
		then
		echo "The Winning Combination is THT"
elif [ $great_index -eq 7 ]
		then
		echo "The Winning Combination is THH"
elif [ $great_index -eq 8 ]
		then
		echo "The Winning Combination is H"
elif [ $great_index -eq 9 ]
		then
		echo "The Winning Combination is T"
elif [ $great_index -eq 10 ]
		then
		echo "The Winning Combination is HH"
elif [ $great_index -eq 11 ]
		then
		echo "The Winning Combination is TT"
elif [ $great_index -eq 12 ]
		then
		echo "The Winning Combination is HT"
else
		echo "The Winning Combination is TH"

fi


