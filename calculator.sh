#!/bin/bash

respone=""
operator=""

#nbr1=0
#nbr2=0
#result=0
echo "debut des operations"

add () {
        echo "Enter successively the two numbers"
        read nbr1
        read nbr2
        let result=$nbr1+$nbr2
        echo "$nbr1 + $nbr2 = $result"
}



substract () {
        echo "Enter successively the two numbers"
        read nbr1
        read nbr2
        let result=$nbr1-$nbr2
        echo "$nbr1 - $nbr2 = $result"
}


multiply () {
        echo "Enter successively the two numbers"
        read nbr1
        read nbr2
        let result=$nbr1*$nbr2
        echo "$nbr1 * $nbr2 = $result"
}


divide () {
        echo "Enter successively the two numbers"
        read nbr1
        read nbr2
        let result=$nbr1/$nbr2
        echo "$nbr1 / $nbr2 = $result"
}
 calcul () {
        case "$operator" in
        "1") add ;;
        "2") substract ;;
        "3") multiply ;;
        "4") divide ;;
        "*") echo "error. Chose a number from 1 to 4 please!";;
        esac

}




until [ "$respone" = "N" ]   || [ "$respone" = "NO" ] || [ "$respone" = "n" ] || [ "$respone" = "no" ];
do
        echo -e "Enter: \n1 for add\n2 for substract\n3 for multiply\n4 for divide"
        read -r operator
        calcul
        echo "Will you continue? y/n"
        read respone
        echo " respone = $respone "

done
