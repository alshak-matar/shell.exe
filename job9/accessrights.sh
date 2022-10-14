#!/bin/bash
#Cette commande permet de définir le séparateur de tableau comme étant une virgule
export IFS=","

#cat permet de lire un fichier, ici le tableau contenant les utilisateurs
#Ensuite while read permet de créer une boucle et des variables, et de les associer aux colonnes du tableau.
  #Puis comme le document est lu ligne par ligne, j'exécute les commandes :
  #sudo userdel permet de supprimer des utilisateurs, ici grâce aux variables, ceux du tableau.
  #sudo goupdel permet de supprimer des groupes, ici grâce aux variables, ceux du tableau.
  #sudo useradd permet de créer des utilisateurs, ici grâce aux variables, ceux du tableau.
  #echo et sudo chpasswd permet de définir des mots de passe, ici grâce aux variables, ceux du tableau.
  #sudo usermod permet ici grâce à l'option -u de créer des UID, celles ci correspond à celles du tableau
  #grâce à la boucle if, je regarde si la condition est correcte. Si oui, alors grâce à usemod -aG j'ajoute l'utilisateur au groupe sudo  
cat /User/alshakmatar/Desktop/shell.exe/job9/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role
	do
	sudo userdel $Prenom-$Nom
	sudo groupdel $Prenom-$Nom
	sudo useradd $Prenom-$Nom
        echo "$Prenom-$Nom:$Mdp" | sudo chpasswd
        sudo usermod -u $Id "$Prenom-$Nom"
                if [ $Role = "Admin" ]
                then
                sudo usermod -aG sudo "$Prenom-$Nom"
                fi
        done
