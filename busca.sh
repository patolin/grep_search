#!/bin/bash

if [[ $# -lt 2 ]]; then
  echo "Uso: $0 clase-a-buscar ruta"
  exit 1
fi

busqueda="$1"
ruta="$2"

grep -rl "$busqueda" "$ruta" | while read file; do echo -e "$(basename "$file")\t$(dirname "$file")"; done
