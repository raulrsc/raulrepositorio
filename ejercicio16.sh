# !/bin/bash
#Hacemos un if en el que se pidan al menos 2 parametros y lo indicamos
if [ "$#" -ge "2" ]; then
	echo "Ha recibido al menos 2 parametros"
#Sacamos el parametro 10 por pantalla
	echo "${10}"
#Si no tenemos como minimo 2 parametros lo indicaremos
else
	echo "No ha recibido 2 o mas parametros"
fi
