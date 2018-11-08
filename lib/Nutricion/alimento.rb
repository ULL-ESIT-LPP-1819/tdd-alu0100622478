class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos, :azucar, :proteina, :sal, :mono

	def initialize(nombre, grasas, saturadas, hidratos, azucar, proteina, sal, *mono)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		@proteina = proteina
		@sal = sal
		@mono = mono
		
	end
end
