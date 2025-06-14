#!/bin/bash

# Lista de submódulos dentro de vanille_scripts
submodules=(
  CamPhish
  evilurl
  ip-tracer
  zphisher
  Crips
  phoneinfoga
)

for mod in "${submodules[@]}"; do
  echo "Procesando submódulo: $mod"
  cd "vanille_scripts/$mod" || { echo "No se pudo acceder a vanille_scripts/$mod"; exit 1; }
  
  git status
  
  git add .
  # Solo hacer commit si hay cambios
  if ! git diff --cached --quiet; then
    git commit -m "Actualizar $mod scripts"
    git push origin main
  else
    echo "No hay cambios para commitear en $mod"
  fi
  
  cd - > /dev/null
done

echo "Proceso finalizado para todos los submódulos."
