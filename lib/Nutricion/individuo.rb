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
	attr_reader :peso
	def initialize(nombre,edad,sexo,peso)
		super(nombre,edad,sexo)
		@peso = peso
	end

	def to_s
		s = "("
		s << super.to_s
		s << "; Peso:#{@peso} )"
	end
end
