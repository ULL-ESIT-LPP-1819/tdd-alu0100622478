class Alimento
	attr_reader :nombre, :racion, :grasas, :saturadas, :hidratos, :azucar, :proteina, :sal, :mono, :poli, :fibra, 
		:kj

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
end
