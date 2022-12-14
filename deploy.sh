#!/bin/bash

############################################################
#
#  Description : déploiement à la volée de conteneur docker
#
#  Auteur : Xavier
#
#  Date : 28/12/2018
#
###########################################################

#si option --create
if [ "$1" == "--create" ];then
  echo ""
	echo " notre option est --create"
	echo ""
nb_machine=1
[ "$2" != "" ] && nb_machine=$2
	sudo docker run -tid --name $USER-alpine alpine:latest
	echo "j'ai créé ${nb_machine}"


# si option --drop
elif [ "$1" == "--drop" ];then

  echo ""
	echo " notre option est --drop"
	echo ""
sudo docker rm -f $USER-alpine 

# si option --start
elif [ "$1" == "--start" ];then
  
  echo ""
	echo " notre option est --start"
	echo ""

# si option --ansible
elif [ "$1" == "--ansible" ];then
  
  echo ""
	echo " notre option est --ansible"
	echo ""

# si option --infos
elif [ "$1" == "--infos" ];then
  
  echo ""
	echo " notre option est --infos"
	echo ""

# si aucune option affichage de l'aide"
else 

echo "

Options :
		- --create : lancer des conteneurs

		- --drop : supprimer les conteneurs créer par le deploy.sh

		- --infos : caractéristiques des conteneurs (ip, nom, user...)

		- --start : redémarrage des conteneurs

		- --ansible : déploiement arborescence ansible

"

fi

