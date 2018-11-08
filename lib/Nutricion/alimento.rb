class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos, :azucar, :proteina, :sal

	def initialize(nombre, grasas, saturadas, hidratos, azucar, proteina, sal)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		@proteina = proteina
		@sal = sal
		
	end
end
