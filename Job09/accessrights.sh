#!/bin/bash
#Chemin du script pour cron
cd ~/Documents/Git/shell-exe/Job09

#Definitions des variables
Userlist="/home/titou/Téléchargements/Shell_Userlist.csv"

#Supprimer tout les espaces dans le fichier
sed -i 's/ //g' $Userlist
#Commande a la fonction read de separer les infos à chaque virgule
IFS=","
<<<<<<< HEAD
	#Création de la fonction
	create_user()
{
=======

>>>>>>> 18a8b86c014a6577d7e383c57e70433ae3bfe8a2
#Lire le fichdier Csv
while read id prenom nom mdp role
	do
		#-m créer le home de l'utilisateur
		#-p permet de créer l'utilisateur avec le mdp
<<<<<<< HEAD
		echo sudo useradd "$prenom-$nom" -m -p $mdp -u $id --badname

#Utilise mon Csv à partir de la ligne 2
done < $Userlist | tail -n +2
}
create_user $id $prenom $nom $mdp $role
echo $role
#	if [ $role = "Admin" ]; then
#		echo sudo usermod -aG sudo "$prenom-$nom"
#	fi

=======
		sudo useradd "$prenom-$nom" -m -p $mdp --badname

	#Ajoute les admin au groupe sudo
	if [ $role= "Admin" ]; then #mon script bug a partir de cette ligne
	sudo usermod -aG sudo $prenom-$nom
	fi

#Affiche mon fichier Csv à partir de la ligne 2
done < $Userlist | tail -n +2
>>>>>>> 18a8b86c014a6577d7e383c57e70433ae3bfe8a2
