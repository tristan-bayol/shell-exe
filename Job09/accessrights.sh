#!/bin/bash
#Chemin du script pour cron
cd ~/Documents/Git/shell-exe/Job09

#Definitions des variables
Userlist="/home/titou/Téléchargements/Shell_Userlist.csv"

#Supprimer tout les espaces dans le fichier
sed -i 's/ //g' $Userlist
#Commande a la fonction read de separer les infos à chaque virgule
IFS=","

#Lire le fichdier Csv
while read id prenom nom mdp role
	do
		#-m créer le home de l'utilisateur
		#-p permet de créer l'utilisateur avec le mdp
		sudo useradd "$prenom-$nom" -m -p $mdp --badname

	#Ajoute les admin au groupe sudo
	if [ $role= "Admin" ]; then #mon script bug a partir de cette ligne
	sudo usermod -aG sudo $prenom-$nom
	fi

#Affiche mon fichier Csv à partir de la ligne 2
done < $Userlist | tail -n +2
