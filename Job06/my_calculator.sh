#!/bin/bash
# J'exclue la division par 0
if [ $2 = "/" ] && [ $3 = "0" ]; then
		echo "Impossible de diviser par 0"
		exit
fi

#J'exclue 0 des equations via cette fonction
if [ $1 = "0" ]; then
                echo "Égale la tête a toto"
		exit
	elif [ $3 = "0" ]; then
                echo "Égale la tête a toto"
		exit
fi

#J'ajoute la multiplication à $2
if [ $2 = "x" ]; then total=$(expr $1 \* $3)
		echo Result: $total

	elif [ $2 = "X" ]; then total=$(expr $1 \* $3)
		echo Result: $total

	elif [ $2 = "*" ]; then total=$(expr $1\* $3)
		echo Result: $total

else total=$(expr $1 $2 $3)
	echo Result: $total
fi

