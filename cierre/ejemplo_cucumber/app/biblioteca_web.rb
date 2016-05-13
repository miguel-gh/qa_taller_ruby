require "sinatra"
require "./biblioteca"

get "/" do
  l = Libro.new "Papelucho", "Marcela Paz"
  pagina = "Autor: #{l.get_autor} - Titulo: #{l.get_titulo}"
end
