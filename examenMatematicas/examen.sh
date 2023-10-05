#/bin/bash
source ./funciones.sh
case $1 in
  bajo)
    echo "bajo"
  ;;
  medio)
    echo "medio"
  ;;
  alto)
    echo "alto"
  ;;
  *)
    echo "el nivel de difilcudad que has seleccionado no existe"
    echo "debes escribir bajo,medio o alto"
esac