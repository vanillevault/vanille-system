#!/bin/bash

# ----------- Variables iniciales -----------
REPO_DIR="$HOME/vanille-system"
SCRIPTS_DIR="$HOME/vanille_scripts"
ZIP_NAME="vanille_scripts.zip"

# ----------- Funciones -----------

check_command() {
  command -v "$1" >/dev/null 2>&1 || { echo "[ERROR] El comando '$1' no está instalado. Instálalo y vuelve a intentar."; exit 1; }
}

create_readme() {
  cat > "$REPO_DIR/README.md" << EOF
# Vanille System

## Descripción

Vanille System es un entorno modular y personalizado para Termux que incluye una suite completa de herramientas OSINT, hacking ético y automatización, con un estilo único y funcionalidad avanzada.

## Instalación

Clona el repositorio:

\`\`\`bash
git clone https://github.com/$GITHUB_USER/$REPO_NAME.git
cd $REPO_NAME
bash vanille-installer.sh
\`\`\`

## Uso

Inicia el launcher principal:

\`\`\`bash
./vanille.sh
\`\`\`

## Estructura

- vanille_scripts/: Carpeta con las herramientas organizadas en subcarpetas.
- vanille.sh: Launcher principal.
- vanille-installer.sh: Instalador automático.
- vanille-setup.sh: Setup de dependencias.
- bashrc_vanille_custom: Configuración personalizada Termux.

## Contacto

Instagram: @vanille.vault

## Licencia

Este proyecto está bajo licencia MIT. Revisa LICENSE para detalles.
EOF
}

create_license() {
  cat > "$REPO_DIR/LICENSE" << EOF
MIT License

Copyright (c) 2025 Vanille Team

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

[...]
EOF
}

# ----------- Inicio -----------

echo "💻 Validando dependencias..."
check_command git
check_command zip

echo "📂 Creando estructura del repositorio..."

mkdir -p "$REPO_DIR"
mkdir -p "$REPO_DIR/vanille_scripts"

echo "📝 Creando README.md y LICENSE..."
create_readme
create_license

echo "📂 Copiando scripts..."

# Copia solo las carpetas indicadas dentro de vanille_scripts
declare -a folders=("camphish" "instahack" "ip-tracer" "phoneinfoga" "zphisher")

for folder in "${folders[@]}"; do
  if [ -d "$SCRIPTS_DIR/$folder" ]; then
    cp -r "$SCRIPTS_DIR/$folder" "$REPO_DIR/vanille_scripts/"
  else
    echo "[WARN] Carpeta $folder no encontrada en $SCRIPTS_DIR, se omite."
  fi
done

# También copia los scripts principales si existen
for scriptfile in vanille.sh vanille-installer.sh vanille-setup.sh bashrc_vanille_custom; do
  if [ -f "$HOME/$scriptfile" ]; then
    cp "$HOME/$scriptfile" "$REPO_DIR/"
  else
    echo "[WARN] Archivo $scriptfile no encontrado en $HOME, se omite."
  fi
done

echo "🗜 Comprimiendo scripts en $ZIP_NAME..."
cd "$SCRIPTS_DIR" || exit
zip -r "$HOME/$ZIP_NAME" "${folders[@]}" >/dev/null

echo "🔐 Configuración de Git..."

# Pide datos
read -rp "👉 Tu usuario GitHub: " GITHUB_USER
