#!/bin/bash
#Con la variante $0 obtenemos el nombre del script
#Con basename hacemos que no salga la ruta actual y se nos quede solo el nombre
echo "$(basename "$0")"
