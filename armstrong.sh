echo "Enter a number to check if it is an Armstrong number:"
read number
num_of_digits=${#number}
sum=0
for (( i=0; i<$num_of_digits; i++ )); do
    digit=${number:$i:1}
    sum=$(bc <<< "$sum + $digit^$num_of_digits")
done

if [[ $sum -eq $number ]]; then
    echo "$number is an Armstrong number."
else
    echo "$number is not an Armstrong number."
fi

