#!/bin/bash
if [ "$2" == "+" ];then  
 somme=$(( $1 + $3 ))
    echo "$somme"
elif [ "$2" == "-" ];then
	soustrac=$(( $1 - $3 ))
        echo "$soustrac"
elif [ "$2" == "x" ];then 
	produit=$(( $1 * $3 ))
        echo "$produit"
elif [ "$2" == "/" ];then
	div=$(( $1 / $3 ))
        echo "$div"

fi
