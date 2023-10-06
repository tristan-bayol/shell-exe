#!/bin/bash
#Definition des variables
current_date=$(date +\%d-\%m-\%Y-\%H:\%M)

#Evite de taper le chemin absolu pour cron à chaque action
cd ~/Documents/Git/shell-exe/Job08/

#Suppression des fichiers précédemments créer
#L'etoile permet de supprimer tous les fichiers contenant number_connection
rm number_connection*

#Création du nouveau fichier avec l'historique
(last && last | grep titou -wc) > number_connection-$current_date

# Création de l'archive dans le dossier Backup
tar -cf ~/Documents/Git/shell-exe/Job08/Backup/number_connection-$current_date.tar number_connection-$current_date
