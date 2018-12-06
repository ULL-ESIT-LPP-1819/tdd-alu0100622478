# Clase que representa a un individuo
# @author Edgar Mesa Santana
class Individuo
	include Comparable
	attr_reader :nombre, :edad, :sexo
	def initialize(nombre,edad,sexo)
		@nombre=nombre
		@edad=edad
		@sexo=sexo
	end

	# Función para mostrar el individuo
	# @return [String]
	def to_s()
		"(Nombre:#{@nombre}; Edad:#{@edad}; Sexo:#{@sexo})"
	end

	# Función que compara los individuos por su edad
	# @param [Class] :another Espera un individuo
	# @return [Boolean] 
	def <=>(another)
		@edad <=> another.edad
	end
end

# Clase que representa a un paciente
# @author Edgar Mesa Santana
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
	
	# Función que muestra lso datos de un paciente
	# @return [String]
	def to_s
		s = "("
		s << super.to_s
		s << "; Peso:#{@peso}; Altura:#{@altura} )"
	end
	# Función calcular índice de masa corporal
	# @return [Float]
	def imc
		@imc = (@peso/(@altura*@altura))
	end
	
	# Función para calcular el porcentaje de grasa 
	# @return [Float]
	def porcentaje_grasa
		@p_grasa = (1.2 * @imc + 0.23 * @edad -10.8 * @sexo -5.4)
	end
	
	# Función índice de masa
	# @return [String] con la descripción de la OMS
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

	# Función índice de masa
	# @return [String] con la descripción popular
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
	
	# Función para calcular la media
	# @param [Vector] se le pasa un vector 
	# @return [Int] La media del vector
	def media(valor)
		aux = 0
		valor.each do |media|
			aux += media.to_i
		end
		@media = aux / valor.length	
	end
	
	# Función para calcular la relación cintura/cadera
	# @return [Int]
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
	# Función para calcular la media bicipedal
	# @return [Int]

	def media_bici
		media_ =self.media(@pc_bici)
	end
	# Función para calcular la media tricipedal
	# @return [Int]
	def media_trici
		media_ =self.media(@pc_trici)
	end
	# Función para calcular la media subescapular
	# @return [Int]
	def media_subes
		media_ =self.media(@pc_subes)
	end
	# Función para calcular la media suprailíaco
	# @return [Int]
	def media_supra
		media_ =self.media(@pc_supra)
	end
	# Función para calcular la media del muslo
	# @return [Int]
	def media_muslo
		media_ =self.media(@pc_muslo)
	end
	# Función para calcular la media del abdomen
	# @return [Int]
	def media_abdom
		media_ =self.media(@pc_abdom)
	end
	# Función para calcular la media del pecho
	# @return [Int]
	def media_pecho
		media_ =self.media(@pc_pecho)
	end
	# Función para hallar la media axilar
	# @return [Int]
	def media_axilar
		media_ =self.media(@pc_axilar)
	end
	# Función para hallar la media de la pierna
	# @return [Int] 
	def media_pierna
		media_ =self.media(@pc_pierna)
	end
	# Función comparar dos pacientes según su índice de masa corporal
	# @param [Class] :other Espera un paciente
	# @return [Boolean] 
	def <=>(other)
		self.imc <=> other.imc
	end
end
