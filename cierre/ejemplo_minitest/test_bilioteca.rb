require 'minitest/autorun'
require './biblioteca'

class TestBiblioteca < Minitest::Test
  
  def test_crear_libro
    l = Libro.new "Papelucho", "Marcela Paz"
    assert l.get_autor == "Marcela Paz"
  end

  def test_cantidad_libros
    l = Libro.new "Papelucho", "Marcela Paz"
    b = Biblioteca.new "B. Municipal", [ l ]
    assert b.cantidad_libros == 1
  end
  
  def test_buscar_libro
    l = Libro.new "Papelucho", "Marcela Paz"
    b = Biblioteca.new "B. Municipal", [ l ]
    
    resultado = b.buscar_libro :autor => "Marcela Paz"
    assert resultado['autor'] == "Marcela Paz"
  end
end
