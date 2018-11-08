class Alimento
	attr_reader :nombre, :racion, :grasas, :saturadas, :hidratos, :azucar, :proteina, :sal, :mono, :poli, :fibra

	def initialize(nombre, racion, grasas, saturadas, hidratos, azucar, proteina, sal, *opcional)
		@nombre,@racion = nombre, racion
		@grasas, @saturadas = grasas, saturadas
		@hidratos, @azucar = hidratos, azucar
		@proteina = proteina
		@sal = sal
		@mono = opcional[0]
		@poli = opcional[1]
		@fibra = opcional[2]
		
	end
end
