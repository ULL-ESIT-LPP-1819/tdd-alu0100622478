class Alimento
	attr_reader :nombre, :grasas, :saturadas, :hidratos

	def initialize(nombre, grasas, saturadas, hidratos)
		@nombre = nombre
		@grasas, @saturadas = grasas, saturadas
		@hidratos = hidratos
		
	end
end
