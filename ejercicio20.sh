# !/bin/bash
# Hacemos un if para comprobar que le hemos pasado dos parametros
if [ $# -ge 2 ]; then
	echo "Tiene como minimo 2 parametros"
#En caso de tener dos parametros tenemos que comprobar que el segundo parametro es un fichero
	if [ -f $2 ]; then
#Si $2 es un fichero tendremos que comprobar a continuacion
		if [ -d $1 ]; then
#En caso de que exista buscaremos la ruta del directorio con un find y en caso de que exista lo indicamos
			find ~ -type d -name $1
			echo "Ya existe el directorio"
			cp $2 $1/
			exit 2
		else
#En caso de no existir hacemos un mkdir para crear el directorio y un cp para copiar y lo indicamos
			mkdir $1
			cp $2 $1/
		echo "Se ha creado $1 correctamente y se hizo una copia de $2 dentro"
		exit 0
		fi
	else
		echo "$2 no es un fichero o no existe"
		exit 3
	fi
else
#En caso de no tener al menos 2 parametros lo indicamos
	echo "No tiene como minimo 2 parametros"
	exit 1
fi
#Con exit 0, 1, 2 y 3 cambiamos el exit code, con exit 1 indicamos que no tenemos 2 parametros, con exit 2 indicamos que existe el fichero y el directorio,
#con exit 3 que no existe el fichero y con exit 0 indicamos que hemos creado el directorio con el parametro
