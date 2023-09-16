for (( number=1; number<=50; number++ )); do

    if [[ $number -lt 2 ]]; then
        continue
    fi
    is_prime=true
    for (( i=2; i<=$number/2; i++ )); do

        if [[ $((number%i)) -eq 0 ]]; then
            is_prime=false
            break
        fi
    done
    if $is_prime; then
        echo "$number"
    fi
done

