class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos, :azucar, :proteina, :sal, :mono, :poli

	def initialize(nombre, grasas, saturadas, hidratos, azucar, proteina, sal, *opcional)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		@proteina = proteina
		@sal = sal
		@mono = opcional[0]
		@poli = opcional[1]
		
	end
end
