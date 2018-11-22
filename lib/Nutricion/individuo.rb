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

	def imc
		@imc = (@peso/(@altura*@altura))
	end

	def porcentaje_grasa
		@p_grasa = (1.2 * @imc + 0.23 * @edad -10.8 * @sexo -5.4)
	end
end
