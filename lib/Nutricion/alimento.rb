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

	def kj
		if @fibra != nil 
			@kj = (@grasas * 37 + @hidratos * 17 + @fibra * 8 + @proteina * 17 + @sal * 25) 
		else 
			@kj = (@grasas * 37 + @hidratos * 17 + @proteina * 17 + @sal * 25)
		end
	end
end
