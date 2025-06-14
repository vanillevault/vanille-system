#!/data/data/com.termux/files/usr/bin/bash

# === Vanille Launcher con menu gráfico (dialog) ===

while true; do
  OP=$(dialog --clear --title "🧊 Terminal Vanille Menu 🧊" \
    --menu "Selecciona una herramienta:" 20 60 10 \
    1 "📱 PhoneInfoga (OSINT móvil)" \
    2 "🎣 Zphisher (Phishing)" \
    3 "📸 CamPhish (Cámara remota)" \
    4 "📍 IP-Tracer (Ubicación IP)" \
    5 "🔐 Instahack (Instagram login)" \
    6 "🚪 Salir" \
    3>&1 1>&2 2>&3)

  clear

  case $OP in
    1) cd ~/vanille_scripts/phoneinfoga && python3 phoneinfoga.p>
    2) cd ~/vanille_scripts/zphisher && bash zphisher.sh ;;
    3) cd ~/vanille_scripts/camphish && bash camphish.sh ;;
    4) cd ~/vanille_scripts/ip-tracer && bash tracer.sh ;;
    5) cd ~/vanille_scripts/instahack && bash instahack.sh ;;
    6) echo "🔥 Cerrando el panel Vanille..."; break ;;
    *) echo "❌ Opción inválida";;
  esac
done
