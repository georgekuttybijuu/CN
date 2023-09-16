echo "Enter a string: "
read str
reverse=$(echo $str | rev)
if [ "$str" = "$reverse" ]
then
    echo "The string $str is a palindrome"
else
    echo "The string $str is not a palindrome"
fi

