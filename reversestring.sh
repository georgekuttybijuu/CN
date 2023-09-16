strings="string1
string2
string3
string4
string5"


readarray -t strings_array <<< "$strings"


for (( i=${#strings_array[@]}-1; i>=0; i-- )); do
    # reverse each string in the array
    reversed_string=$(echo "${strings_array[i]}" | rev)
    # replace the original string with the reversed string in the array
    strings_array[i]=$reversed_string
done


reversed_strings=$(printf '%s\n' "${strings_array[@]}")


echo "$reversed_strings"
