#Gemas requeridas: uri, net/http, json
require 'uri'
require 'net/http'
require 'json'

def request(url_requested)
  # Crear la instancia URI con la URL proporcionada
  api_key = "4GbYDoeqAogtEcQjfj03PZ8JzcBSSxCXnu8R9efR"
  url = URI(url_requested)

  # Crear una instancia de Net::HTTP para realizar la solicitud HTTP
  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_PEER

  # Crear una solicitud HTTP GET con los encabezados necesarios
  request = Net::HTTP::Get.new(url)
  request['cache-control'] = 'no-cache'
  request['postman-token'] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'

  # Realizar la solicitud HTTP y obtener la respuesta
  response = http.request(request)
  
  if response
    # Analizar la respuesta JSON obtenida del cuerpo de la respuesta
    JSON.parse(response.body)
  else
    puts 'No se recibió una respuesta válida del servidor.'
  end
end

# Realizar la solicitud HTTP y obtener todos los datos
all_data = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=10&api_key=DEMO_KEY')

# Imprimir todos los datos obtenidos
puts 'Todos los datos:'
puts all_data 
# Obtener solo las primeras 5 imágenes del arreglo
first_5_images = all_data.first(5)

# Imprimir solo las primeras 5 imágenes
puts 'Primeras  imágenes:'
#puts first_images


def build_web_page(data)

  html = "<html>
  <head>
  </head>
  <body>
  <ul>"


  data.each do |photo|
    html += "<li><img src=\"#{photo["img_src"]}\"></li>\n"
  end
  html += "</ul>
  </body>
  </html>"
  File.write('output.html', html)

end

build_web_page(all_data["photos"])









