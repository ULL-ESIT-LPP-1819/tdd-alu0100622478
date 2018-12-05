class Individuo
	include Comparable
	attr_reader :nombre, :edad, :sexo
	def initialize(nombre,edad,sexo)
		@nombre=nombre
		@edad=edad
		@sexo=sexo
	end

	def to_s()
		"(Nombre:#{@nombre}; Edad:#{@edad}; Sexo:#{@sexo})"
	end
	def <=>(another)
		@edad <=> another.edad
	end
end


class Paciente < Individuo
	attr_reader :peso, :altura, :c_cin, :c_cad, :pc_bici, :pc_trici, :pc_subes, :pc_supra, :pc_muslo, :pc_abdomen,
		:pc_pecho, :pc_axilar, :pc_pierna
	def initialize(nombre,edad,sexo,peso,altura,c_cin,c_cad, pc_bici, pc_trici, pc_subes, pc_supra, pc_muslo, 
		      pc_abdom, pc_pecho, pc_axilar, pc_pierna)
		super(nombre,edad,sexo)
		@peso, @altura = peso, altura
		@c_cin, @c_cad = c_cin, c_cad
		@pc_bici, @pc_trici = pc_bici, pc_trici
		@pc_subes, @pc_supra = pc_subes, pc_supra
		@pc_muslo, @pc_pierna = pc_muslo, pc_pierna
		@pc_axilar, @pc_abdom = pc_axilar, pc_abdom
		@pc_pecho = pc_pecho
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
	def media(valor)
		aux = 0
		valor.each do |media|
			aux += media.to_i
		end
		@media = a-ux / valor.length	
	end

	def rcc
		rcc_ = (self.media(@c_cin)/self.media(@c_cad))
		if @sexo == 0
			if 0.72 <= rcc_ and rcc_ < 0.78
				@rcc = 'Bajo'
			elsif 0.78 <= rcc_ and rcc_ < 0.82
				@rcc = 'Moderado'
			elsif 0.82 <= rcc_
				@rcc = 'Alto'
			else
				@rcc = 'WHAT?'
			end
		elsif @sexo == 1
			if 0.83 <= rcc_ and rcc_ < 0.88
				@rcc = 'Bajo'
			elsif 0.88 <= rcc_ and rcc_ < 0.95
				@rcc = 'Moderado'
			elsif 0.95 <= rcc_ and rcc_ < 1.01
				@rcc = 'Alto'
			elsif 1.01 <= rcc_
				@rcc = 'Muy alto'
			else
				@rcc = 'WHAT?'
			end
		end
	end

	def media_bici
		media_ =self.media(@pc_bici)
	end
	def media_trici
		media_ =self.media(@pc_trici)
	end
	def media_subes
		media_ =self.media(@pc_subes)
	end
	def media_supra
		media_ =self.media(@pc_supra)
	end
	def media_muslo
		media_ =self.media(@pc_muslo)
	end
	def media_abdom
		media_ =self.media(@pc_abdom)
	end
	def media_pecho
		media_ =self.media(@pc_pecho)
	end
	def media_axilar
		media_ =self.media(@pc_axilar)
	end
	def media_pierna
		media_ =self.media(@pc_pierna)
	end
	def <=>(other)
		self.imc <=> other.imc
	end
end
