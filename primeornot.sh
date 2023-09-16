echo "Enter a number to check if it is prime:"
read number
if [[ $number -lt 2 ]]; then
    echo "$number is not a prime number."
    exit 0
fi
for (( i=2; i<=$number/2; i++ )); do
    if [[ $((number%i)) -eq 0 ]]; then
        echo "$number is not a prime number."
        exit 0
    fi
done
echo "$number is a prime number."

