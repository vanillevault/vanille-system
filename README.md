# Vanille System

**Vanille System** es un entorno modular para Termux diseñado por NVLL, combinando estética, herramientas OSINT, automatización y funcionalidad pulida para investigadores, hackers éticos y operadores digitales que exigen precisión y estilo.

---

## 🔧 Instalación

Clona el repositorio y entra al directorio:

```bash
git clone https://github.com/vanillevault/vanille-system.git
cd vanille-system

Aplica el entorno personalizado:

cp .bashrc ~/
source ~/.bashrc

Ejecuta el launcher:

bash vanille-launcher.sh


---

📁 Estructura del Proyecto

vanille-system/
├── .bashrc                → Estética Vanille para Termux (verde menta + negro, alias y entorno OSINT)
├── vanille-launcher.sh    → Menú de herramientas con selector visual
└── vanille_scripts/       → Submódulos con herramientas OSINT y de red
    ├── Crips              → Reconocimiento en red
    ├── evilurl            → Detecta URLs falsas (homógrafos, phishing)
    ├── ip-tracer          → Geolocalización de IPs
    ├── phoneinfoga        → Información sobre números de teléfono
    └── zphisher           → Framework de phishing automatizado


---

⚡ Uso

Abre Termux y ejecuta:

vanille

Este alias te llevará al menú de herramientas y scripts OSINT.


---

📡 Contacto

IG: @vanille.vault


---

📜 Licencia

Este proyecto está bajo licencia MIT. Consulta el archivo LICENSE para más detalles.


---

> "La estética no está reñida con la eficacia. Vanille es precisión con clase."
— NVLL

