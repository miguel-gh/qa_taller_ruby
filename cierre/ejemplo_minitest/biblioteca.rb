class Libro

  def initialize(titulo, autor)
    @titulo = titulo
    @autor = autor
  end

  def get_autor
    return @autor
  end

  def get_titulo
    return @titulo
  end

end

class Biblioteca

  def initialize(nombre_biblioteca, libros)
    @nombre_biblioteca = nombre_biblioteca
    @libros = Array.new( libros )
  end

  def cantidad_libros
    @libros.length
  end

  def buscar_libro(parametros)
    s_titulo = parametros[:titulo]
    s_autor = parametros[:autor]
  
    @libros.each do | libro |
      if (libro.get_titulo == s_titulo or libro.get_autor == s_autor)
        return {'autor' => libro.get_autor, 'titulo' => libro.get_titulo}
        break
      end
    end
    return {}
  end    
end


