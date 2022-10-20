#!/bin/bash
#Hacemos un if para saber si el script ha recibido un parametro o mas
if [ $# -ge 1 ]; then
	echo "Hay al menos un parametro"
#Cuando tenemos un parametro creamos otro if para saber si ya hay un directorio con ese nombre
	if [ -d $1 ]; then
		echo "$1 es un directorio que ya existe"
		exit 2
	else
#En caso de no existir un directorio con el nombre del parametro lo creamos
		mkdir $1
		echo "Se ha creado $1"
	fi
	exit 0
#En caso de no recibir parametros lo indicaremos
else
	echo "No hay parametros"
	exit 1
fi
#Con el exit 0,1 y 2 hacemos que cambie el exit code segun si se ha creado (opcion 0), si ya existe (opcion 2) y si no hay parametros (opcion 1)
