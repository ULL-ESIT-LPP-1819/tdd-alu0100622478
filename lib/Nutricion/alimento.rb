class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos, :azucar, :proteina

	def initialize(nombre, grasas, saturadas, hidratos, azucar, proteina)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		@proteina = proteina
		
	end
end
