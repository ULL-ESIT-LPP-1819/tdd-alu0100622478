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

	def imc_oms
		if @imc < 18.5
			@oms = 'Bajo peso'
		elsif 18.5 <= @imc and @imc <= 24.9
			@oms = 'Adecuado'
		elsif 24.9 < @imc and @imc <= 29.9
			@oms = 'Sobrepeso'
		elsif 29.9 < @imc and @imc <= 34.9
			@oms = 'Obesidad grado 1'
		elsif 34.9 < @imc and @imc <= 39.9
			@oms = 'Obesidad grado 2'
		elsif 39.9 < @imc
			@oms = 'Obesidad grado 3'
		else
			@oms = 'WHAT?'
		end
	end

	def imc_pop		
		if @imc < 18.5
			@oms = 'Delgado'
		elsif 18.5 <= @imc and @imc <= 24.9
			@oms = 'Adecuado'
		elsif 24.9 < @imc and @imc <= 29.9
			@oms = 'Sobrepeso'
		elsif 29.9 < @imc 
			@oms = 'Obesidad'
		else
			@oms = 'WHAT?'
		end
	end
end
