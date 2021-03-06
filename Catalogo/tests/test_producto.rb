
require_relative  '../src/producto'
require  'test/unit'

#require 'simplecov'
#SimpleCov.start

#require 'codecov'
#SimpleCov.formatter = SimpleCov::Formatter::Codecov

class TestMyProducto <  Test::Unit::TestCase
	
	def test_producto()
		@producto = Producto.new("00101","20","2 kg", "20,20,50","Botella de ron")
		assert @producto.getIdentificador == "00101", " Identificador erroneo"
		assert @producto.getPrecio == "20", "El precio no es correcto"
		assert @producto.getPeso == "2 kg", " Peso erroneo "
		assert @producto.getVolumen == "20,20,50", " Volumen erroneo"
		assert @producto.getDescripcion == "Botella de ron", "El nombre no es correcto"
	end
	
end
