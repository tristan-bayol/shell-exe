#!/bin/bash

# = permet de faire un test de ma variable
# S1 est ma variable soit Hello soit Bye
if [ $1 = "Hello" ]; then
	echo "Bonjour je suis un script !"

elif [ $1 = "Bye" ]; then
	echo "Au revoir et bonne journée ! "
else 
	echo "Utilisez Hello ou Bye !"

fi
