class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos, :azucar

	def initialize(nombre, grasas, saturadas, hidratos, azucar)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		
	end
end
