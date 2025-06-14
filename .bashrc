Vanille style bashrc 2025

#Limpia pantalla al iniciar

clear

Banner en ASCII con toilet (asegúrate de tener instalado toile

toilet -f pagga "VANILLE" --metal

#Mensaje de firma frio y discreto

echo -e "\e[1;30m 'Observado. No atrapado. '\e[Om"

#Prompt personalizado: [NVLL@host carpetal

export PS1="\e[1;32m [NVLL@\h \W] [\e[Om"

#Alias útiles estilo Vanille

alias vpn "protonvpn-cli connect"

alias cloaked "tor &>/dev/null & echo 'Tor activo""

alias pingtest "ping -c 4 1.1.1.1"

alias ghost "am start a android.intent.action. MAIN -n com.termu

alias vanish "clear && echo 'Red limpia. Sin rastros.

#Fin de Vanille bashrc

#Vanille Secure Auto Start

#Función para conectar VPN y lanzar Tor si no están activos

function start_vanille_secure() {

#Comprobar si Tor está corriendo

if pgrep -x "tor" > /dev/null, then

echo "Tor ya está activo."

else

echo "Iniciando Tor..."

tor/dev/null 2>&1 8

sleep 3

fi

echo -e "\e[1;32mEntorno Vanille seguro activo \e[0m"

#Ejecutar función solo si Termux es interactivo

if [ $- *i* 1]; then

start_vanille_secure

f1

alias vanille 'bash ~/vanille-launcher.sh'

alias vanille 'bash ~/vanille-launcher.sh'

alias vanille 'bash ~/vanille-launcher.sh'

alias whoami 'echo "Vanille NVLL, el que corre en las sombras"'
