#!/bin/sh
echo " "
echo "------------------------------------------------------------------"
echo " "
echo "           Bienvenido al sistema de actualizacion de openwrt      "
echo " "
echo "------------------------------------------------------------------"
echo " "
Var="$(opkg list-upgradable | grep -v kmod | cut -f1 -d" ")"
if [ $Var ="" ]; then
echo "Su sistema esta actualizado"
else
echo "   Usted tiene actualizaciones pendientes  "
echo "             ¿Desea continuar?           "
echo " Presione y para continuar, i para salir "
#leer el dato del teclado y guardarlo en la variable de usuario var1
read X
if [ $X = "y" ]; then
opkg upgrade ${Var}
echo "  Fin de la actualizacion  "
else
echo "                           Nada por hacer               "
echo "                      Actualización cancelada           "
echo " Le aseguramos que no le va a gustar cuando le afecte un malware"
fi
fi
echo " "

