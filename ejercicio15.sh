#!/bin/bash
#Hacemos un if para verificar que hemos pasado al menos un parametros
if [ "$#" -gt "0" ]; then
#Ya sabiendo que tenemos algun parametros lo indicamos y usamos IFS para separar cada parametro segun nosotros querramos en mi caso *
# y sacamos los parametros separados por IFS con el echo $*
	echo "Ha recibido un parametro al menos"
	IFS='*'
	echo "$*"
	exit 0
#En caso de no tener parametros lo indicamos
else
	echo "No ha recibido ningun parametro"
	exit 1
fi
#Si tenemos parametros usamos el codigo de salida 0 y si no tenemos parametros usamos el 1
