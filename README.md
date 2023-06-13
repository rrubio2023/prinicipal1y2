# Conectandonos a la NASA

Este repositorio contiene un código en Ruby que realiza una solicitud HTTP a la API de la NASA para obtener imágenes del rover Curiosity en Marte. Las gemas utilizadas en este código son uri, net/http y json.

## Requisitos
Asegúrate de tener instaladas las siguientes gemas en tu entorno de Ruby:

uri
net/http
json
Puedes instalar estas gemas ejecutando el siguiente comando:

shell
Copy code
gem install uri net-http json
Uso
Sigue los pasos a continuación para utilizar este código:

Clona este repositorio en tu máquina local:

shell
Copy code
git clone https://github.com/tu_usuario/nasa-api-client.git
Navega al directorio del repositorio:

shell
Copy code
cd nasa-api-client
Abre el archivo main.rb en tu editor de código preferido.

En la función request, asegúrate de tener una clave de API válida de la NASA asignada a la variable api_key. Si no tienes una clave de API, puedes obtener una aquí.

Guarda los cambios en el archivo main.rb.

Ejecuta el script de Ruby:

shell
Copy code
ruby main.rb
Esto realizará una solicitud HTTP a la API de la NASA y obtendrá imágenes del rover Curiosity en Marte.

Se generará un archivo HTML llamado output.html que mostrará las imágenes obtenidas. Puedes abrir este archivo en tu navegador web para ver las imágenes.

Contribución
Si deseas contribuir a este proyecto, siéntete libre de hacerlo. Puedes abrir un problema para informar errores o enviar una solicitud de extracción con mejoras y correcciones de código.

Atribuciones
Este código utiliza la API de la NASA para obtener imágenes del rover Curiosity en Marte. Puedes encontrar más información sobre la API y sus términos de uso en el sitio web de la NASA.

Licencia
Este proyecto está bajo la Licencia MIT.