#!/bin/bash
#Hacemos un if en el que si la cantidad de parametros es 0 termine y nos indique que no recibio parametros
if [ $# -eq 0 ]; then
	echo "El script no ha recibido ningun parametro"
	exit 1
#En caso de que si reciba parametros indicaremos cuantos parametros ha recibido el script y tambien saldra por pantalla los parametros
else
	echo "Ha recibido $# parametros"
	echo "$@"
	exit 0
fi
#Usaremos exit 0 y 1 para cambiar el exit code,  exit 1 cuando no reciba parametros y exit 0 cuando reciba parametros
