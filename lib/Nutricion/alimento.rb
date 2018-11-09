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
	def kcal
		if @fibra !=nil
			@kcal = (@grasas*9 + @hidratos*4 + @fibra*2 + @sal*6)
		else 
			@kcal = (@grasas*9 + @hidratos*4 + @sal*6)
		end
	end
	def kj_r
		#if @fibra != nil
		#	@kj_r = (@grasas*37 + @hidratos*17 + @fibra*8 + @proteina*17 + @sal*25)*(@racion/100)
		#else
		#	@kj_r = (@grasas*37+@hidratos*17+@proteina*17+@sal*25)*(@racion/100)
		#end
		@kj_r = self.kj * (@racion/100.0)
	end
	def kcal_r
		@kcal_r = self.kcal * (@racion/100.0)
	end
	def ir_vkj
		@ir_vkj = (self.kj*100.0) / 8400.0 
	end
	def ir_vkcal
		@ir_vkcal = (self.kcal*100.0) / 2000.0
	end
	def ir_g
		@ir_g = (@grasas*100) / 70.0
	end
	def ir_ag
		@ir_ag = (@saturadas*100) / 20.0
	end
	def ir_h
		@ir_h = (@hidratos*100.0) / 260.0
	end
	def ir_az
		@ir_az = (@azucar*100.0) / 90.0
	end
	def ir_p
		@ir_p = (@proteina*100.0) / 50.0
	end
	def ir_s
		@ir_s = (@sal*100.0) / 6
	end
	def to_s
		@linea = "#{@nombre}\t Por 100g o ml\t IR (100)\t Ración #{@racion}g\t IR por ración\n"
		@linea << "Valor energético\t #{self.kj}Kj\t #{self.ir_vkj}%\t #{self.kj_r}\t #{self.ir_vkj}%\n"
		@linea << "(kj/kcal)\t #{self.kcal}Kcal\t #{self.ir_vkcal}%\t #{self.kcal_r}\t #{self.ir_vkcal}%\n"
		@linea << "Grasas de las\t #{@grasas}g\t #{self.ir_g}%\n"
		@linea << "cuales\n"
		@linea << "Saturadas\t #{@saturadas}g\t #{self.ir_ag}%\n"
		@linea << "Monoinsaturada\t #{@mono}g\n"
		@linea << "Polisaturadas\t #{@poli}g\n"
		@linea << "Hidratos de\t #{@hidratos}g\t #{self.ir_h}%\n"
		@linea << "carbono de los\n"
		@linea << "cuales\n"
		@linea << "Azúcares\t #{@azucar}g\t #{self.ir_az}%\n"		
		@linea << "Fibra alimenticia\t #{@fibra}g\n"
		@linea << "Proteinas\t #{@proteina}g\t #{self.ir_p}%\n"
		@linea 
	end
end
