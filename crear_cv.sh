#!/bin/bash

cat <<EOF > CV_Adrian_Flex.html
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>CV Adrián Giménez - Flex Style</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
  body {
    font-family: 'Roboto', sans-serif;
    margin: 0; padding: 0;
    background: #121212;
    color: #e0e0e0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
  }
  .container {
    display: flex;
    flex-direction: column;
    max-width: 900px;
    background: #1f1f1f;
    border-radius: 12px;
    box-shadow: 0 0 15px #00ff99aa;
    padding: 30px 40px;
  }
  header {
    border-bottom: 2px solid #00ff99;
    margin-bottom: 20px;
    text-align: center;
  }
  header h1 {
    margin: 0; font-weight: 700;
  }
  header p {
    margin: 5px 0 0;
    font-style: italic;
    color: #00ff99cc;
  }
  section {
    margin-bottom: 25px;
  }
  h2 {
    border-bottom: 1px solid #00ff99cc;
    padding-bottom: 5px;
    color: #00ff99;
    text-transform: uppercase;
  }
  ul {
    list-style: none;
    padding-left: 0;
  }
  ul li {
    margin: 8px 0;
  }
  .contact-info {
    display: flex;
    justify-content: space-around;
    margin-top: 10px;
  }
  .contact-info div {
    font-weight: 500;
  }
</style>
</head>
<body>
<div class="container">
  <header>
    <h1>Adrián Giménez</h1>
    <p>Desarrollador y especialista en sistemas personalizados</p>
  </header>

  <section>
    <h2>Contacto</h2>
    <div class="contact-info">
      <div>Email: <a href="mailto:adrian74gimenez@gmail.com" style="color:#00ff99;">adrian74gimenez@gmail.com</a></div>
      <div>Teléfono: <a href="tel:+376653494" style="color:#00ff99;">+376 653 494</a></div>
      <div>GitHub: <a href="https://github.com/vanillevault" target="_blank" style="color:#00ff99;">vanillevault</a></div>
    </div>
  </section>

  <section>
    <h2>Perfil</h2>
    <p>Especialista en entornos Termux personalizados, automatización y seguridad digital con experiencia en e-commerce y gestión de redes ocultas.</p>
  </section>

  <section>
    <h2>Habilidades</h2>
    <ul>
      <li>Linux & Termux avanzado</li>
      <li>Bash scripting y automatización</li>
      <li>Git & GitHub workflows</li>
      <li>Redes Tor y anonimato digital</li>
      <li>OSINT y hacking ético</li>
      <li>Python básico para herramientas OSINT</li>
    </ul>
  </section>

  <section>
    <h2>Experiencia</h2>
    <ul>
      <li><strong>Gestión y configuración de entornos Termux personalizados</strong> — Diseño y mantenimiento de setups con Tor, scripts OSINT y hacking.</li>
      <li><strong>Automatización de despliegue en GitHub</strong> — Creación de pipelines para subir y organizar proyectos completos en repositorios.</li>
      <li><strong>Especialista en privacidad y anonimato digital</strong> — Uso avanzado de Tor, proxies y técnicas para ocultar identidad online.</li>
    </ul>
  </section>

  <section>
    <h2>Educación</h2>
    <ul>
      <li>Autodidacta en seguridad informática y programación</li>
      <li>Formación continua en tecnologías Linux y scripting</li>
    </ul>
  </section>
</div>
</body>
</html>
EOF

echo "CV generado: CV_Adrian_Flex.html"
