#!/bin/bash
clear
echo ""
echo ""
echo "   \e[0;31mAdvertencia: Por la seguridad de sus archivos, verifique"
echo         "   que este archivo se encuentra en la carpeta correcta antes "
echo         "   de seleccionar alguna de las siguientes opciones.\e[0m"
sleep 4
clear
echo ""

echo "     /%%%%%%  /%%   /%%     /%%                                 /%%"
sleep 0.15
echo "    /%%__  %%|__/  | %%    | %%                                | %%"
sleep 0.15
echo "   | %%  \__/ /%% /%%%%%%  | %%        /%%%%%%   /%%%%%%   /%%%%%%%"
sleep 0.15
echo "   | %% /%%%%| %%|_  %%_/  | %%       /%%__  %% |____  %% /%%__  %%"
sleep 0.15
echo "   | %%|_  %%| %%  | %%    | %%      | %%  \ %%  /%%%%%%%| %%  | %%"
sleep 0.15
echo "   | %%  \ %%| %%  | %% /%%| %%      | %%  | %% /%%__  %%| %%  | %%"
sleep 0.15
echo "   |  %%%%%%/| %%  |  %%%%/| %%%%%%%%|  %%%%%%/|  %%%%%%%|  %%%%%%%"
sleep 0.15
echo "    \______/ |__/   \___/  |________/ \______/  \_______/ \_______/"
sleep 0.15
echo "                                                            V1.3.1"
sleep 0.15
echo ""
echo "   Bienvenido a GitLoad"
echo ""
echo "   \e[1;34m                  MENU\e[0m"
echo "   \e[1;34m******************************************\e[0m"
echo "   \e[1;34m*                                        *\e[0m"
echo "   \e[1;34m*  1) Iniciar repositorio y actualizarlo *\e[0m"
echo "   \e[1;34m*  2) Actualizar repositorio existente   *\e[0m"
echo "   \e[1;34m*  Cualquier otra tecla para salir       *\e[0m"
echo "   \e[1;34m*                                        *\e[0m"
echo "   \e[1;34m******************************************\e[0m"	
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
	sleep .5
	clear
fi

