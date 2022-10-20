#!/bin/bash
#Hacemos un if para saber si ha recibido al menos un parametro
if [ $# -gt 0 ]; then
#En caso de tener algun parametro haremos un find para buscar la ruta
# haremos un test para saber si el parametro es un directorio
	if [ -d $1 ]; then
		echo "Es un directorio"
		find ~ -name $1
	else
# Tambien haremos un test para saber si es un fichero
	if [ -f $1 ]; then
		echo "Es un fichero"
		find ~ -name $1
	else
		echo "No es un fichero ni un directorio"
	fi
	fi
# Si no tenemos ningun parametro lo indicaremos
else
	echo "No hay ningun parametro insertado"
fi
