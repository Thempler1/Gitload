#!/bin/bash
clear
read -p "Ingrese su usuario git: "  username
clear
echo "\e[0;31mNOTA: Por la seguridad de sus archivos, verifique que este archivo se encuentra en la carpeta correcta\e[0m"
echo ""
counter="1 2 3 4 "
for number in $counter
do
	clear
	echo ""
	echo "Hola $username!"
	echo ""
	echo "Bienvenido a \e[1;42mGit\e[0m\e[1;43mLoad\e[0m"
	echo "\e[1;34m                  MENU\e[0m"
	echo "\e[1;34m*****************************************\e[0m"
	echo "\e[1;34m*                                       *\e[0m"
	echo "\e[1;34m* 1) Iniciar repositorio y actualizarlo *\e[0m"
	echo "\e[1;34m* 2) Actualizar repositorio existente   *\e[0m"
	echo "\e[1;34m* Cualquier otra tecla para salir       *\e[0m"
	echo "\e[1;34m*                                       *\e[0m"
	echo "\e[1;34m*****************************************\e[0m"
	sleep .1
	clear
	echo ""
	echo "Hola $username!"
	echo ""
	echo "Bienvenido a \e[1;32mGit\e[0m\e[1;33mLoad\e[0m"
	echo "\e[1;34m                  MENU\e[0m"
	echo "\e[1;34m*****************************************\e[0m"
	echo "\e[1;34m*                                       *\e[0m"
	echo "\e[1;34m* 1) Iniciar repositorio y actualizarlo *\e[0m"
	echo "\e[1;34m* 2) Actualizar repositorio existente   *\e[0m"
	echo "\e[1;34m* Cualquier otra tecla para salir       *\e[0m"
	echo "\e[1;34m*                                       *\e[0m"
	echo "\e[1;34m*****************************************\e[0m"
	sleep .1	
done
echo ""
read -p "Ingrese opcion: "  opcion
if [ $opcion -eq 1 ]
	then
	echo "creando..."
	git init
	read -p "Ingrese url del repositorio: " url
	git remote add origin $url
	echo "Descargando archivos..."
	git fetch origin
	git pull origin master
	echo "Preparando subida de archivos..."
	git add .
	read -p "Ingrese mensaje de commit: " commit
	git commit -a -m "$commit"
	echo "Subiendo archivos.."
	git push -u origin master
	echo "Subida exitosa! :)"
	sleep .3
	
elif [ $opcion -eq 2 ]
	then
	echo "Preparando actualizacion de archivos..."
	git add .
	read -p "Ingrese mensaje de commit: " commit
	git commit -a -m "$commit"
	echo "Subiendo archivos.."
	git push -u origin master
	echo "Subida exitosa! :)"
	sleep .3
else
	echo "Saliendo..."
	sleep .3
	clear
fi

