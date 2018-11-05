class Alimento
	attr_reader :nombre, :grasas

	def initialize(nombre, grasas)
		@nombre = nombre
		@grasas = grasas
	end
end
