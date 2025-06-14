#!/bin/bash

set -e

REPO_PATH=$(pwd)
SUBMODULE_PATH="vanille_scripts/CamPhish"
SUBMODULE_URL="https://github.com/techchipnet/CamPhish.git"

echo "Corrigiendo .gitmodules..."

# Reemplaza cualquier camphish (minúscula) por CamPhish (mayúscula)
sed -i 's|vanille_scripts/camphish|vanille_scripts/CamPhish|g' .gitmodules

echo "Corrigiendo .git/config..."

# Corrige en .git/config (si existe) la ruta con la mayúscula correcta
if grep -q "submodule.vanille_scripts/camphish" .git/config; then
    sed -i 's|submodule.vanille_scripts/camphish|submodule.vanille_scripts/CamPhish|g' .git/config
fi
if grep -q "url = .*camphish" .git/config; then
    sed -i "s|url = .*camphish|url = $SUBMODULE_URL|g" .git/config
fi

echo "Sincronizando submódulos..."
git submodule sync
git submodule update --init --recursive

echo "Comprobando referencias erróneas con minúsculas..."

# Si sigue apareciendo la referencia con minúscula, elimínala y reañade el submódulo
if git config -f .git/config --get-regexp submodule | grep -q "vanille_scripts/camphish"; then
    echo "Referencia minúscula encontrada, eliminando y reañadiendo submódulo..."

    git submodule deinit -f $SUBMODULE_PATH || true
    git rm --cached $SUBMODULE_PATH || true
    rm -rf ".git/modules/$SUBMODULE_PATH"

    git submodule add $SUBMODULE_URL $SUBMODULE_PATH
    git submodule update --init --recursive
fi

echo "Agregando cambios a git..."
git add .gitmodules .git/config $SUBMODULE_PATH

echo "Commit y push..."
git commit -m "Fix CamPhish submodule path and URL casing"
git push origin main

echo "¡Listo! Submódulo CamPhish corregido y sincronizado."
