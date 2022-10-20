#!/bin/bash
# Usamos un if para saber si hemos introducido al menos un parametro
if [ $# -gt 0 ]; then
# Si tenemos un parametro buscaremos la ruta con un find
# Haremos un test en caso de ser fichero o directorio
	find ~  -name $1
	test -f $1 || test -d $1
# Si es un directorio o fichero haremos un if para determinar que existe la ruta e indicarlo
	if [ $? -eq 0 ]; then
		echo "Exite la ruta"
# Si no es un directorio lo indicaremos
	else 
		echo "No existe la ruta"
	fi

else
# Si no es un parametro lo indicamos
	echo "No hay ningun parametro insertado"
fi
