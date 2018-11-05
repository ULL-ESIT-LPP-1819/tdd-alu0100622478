class Alimento
	attr_reader :nombre, :grasas, :saturadas

	def initialize(nombre, grasas, saturadas)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		
	end
end
