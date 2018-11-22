class Individuo
	attr_reader :nombre, :edad, :sexo
	def initialize(nombre,edad,sexo)
		@nombre=nombre
		@edad=edad
		@sexo=sexo
	end

	def to_s()
		"(Nombre:#{@nombre}; Edad:#{@edad}; Sexo:#{@sexo})"
	end
end


class Paciente < Individuo
	attr_reader :peso, :altura
	def initialize(nombre,edad,sexo,peso,altura)
		super(nombre,edad,sexo)
		@peso, @altura = peso, altura
	end

	def to_s
		s = "("
		s << super.to_s
		s << "; Peso:#{@peso}; Altura:#{@altura} )"
	end
end
