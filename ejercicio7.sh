#!/bin/bash
#Usamos IFS con valor - para que separe los parametros con un guion
IFS='-'
#Llamaremos a los parametros que saldran separados por IFS que usamos el guion
echo "$*"
