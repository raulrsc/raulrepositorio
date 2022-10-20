#!/bin/bash
#Usamos IFS para que la separacion entre parametros sea *
IFS='*'
#Con $* llamamos a los parametro separados por IFS
echo "$*"
