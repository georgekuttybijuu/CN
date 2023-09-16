echo "Enter a number: "
read num
reverse=0
temp=$num
while [ $temp -gt 0 ]
do
    remainder=$(($temp % 10))
    reverse=$((($reverse * 10) + $remainder))
    temp=$(($temp / 10))
done
if [ $num -eq $reverse ]
then
    echo "The number $num reverse is same"
else
    echo "The number $num reverse is not same"
fi

