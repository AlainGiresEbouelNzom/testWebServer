#!/bin/bash
###Package d'installation
#Author : Alain Eboeul
#Date : 06-06-2022


echo "Enter 3 numbers"
read nb1
read nb2
read nb3


if [ $nb1 -gt $nb2 ]
then
        if [ $nb2 -gt $nb3 ]
                then echo "$nb1, $nb2, $nb3"
        else
                if  [ $nb3 -lt $nb1 ]
                then
                        echo "$nb1, $nb3, $nb2"

                else
                         echo "$nb3, $nb1, $nb2"

                fi

        fi
else
        if [ $nb1 -gt $nb3 ]
                then echo "$nb2, $nb1, $nb3"
        else
                if  [ $nb3 -lt $nb2 ]
                then
                        echo "$nb2, $nb3, $nb1"

                else
                         echo "$nb3, $nb2, $nb1"

                fi

        fi
fi

