# !/bin/bash
#Hacemos un if para saber si hay al menos dos parametros
if [ $# -ge 2 ]; then
	echo "Hay al menos 2 parametros"
#Tenemos un segundo if en caso de tengamos dos parametros, para que en caso de que el segundo parametro sea un fichero y tengas permiso de lectura
#nos lo muestre por pantalla
	if [ -r $2 ]; then
		cat $2
	exit 0
	else
#En caso de que no exista o no tengamos permiso de lectura sobre un fichero con el nombre del parametro tendremos
#que indicar que no existe o que no temos permiso de lectura
		echo "No existe $2 o bien no tienes permiso de lectura sobre el"
	exit 2
	fi
#Si no tenemos al menos dos parametros lo indicaremos
else
	echo "No hay al menos 2 parametros"
	exit 1
fi
#Con el exit 0, 1 y 2 hemos cambiado el exit code, la opcion 0 sera si nos muestra lo que contiene el fichero, la opcion 2 si no existe el fichero
#la opcion 1 sera si no hay 2 parametros
