RSpec.describe Alimento do
	describe "#Creación de un menú" do
		before :all do
			@leche = Alimento.new("Leche",100,3.6,2.4,4.6,4.6,3.1,0.1)
			@arroz = Alimento.new("Arroz integral",100,2.5,0.5,71,1.2,8.4,0.01,nil,nil,3.4)
			@pasta = Alimento.new("Pasta",105.0,1.6,0.3,78.4,2.8,13.7,0.1,0.2,0.6,3.4)
			@ternera = Alimento.new("Ternera",209.0,23.8,8.9,0.0,0.0,62.9,0.2,9.2,1.7,0.0)
			@pollo = Alimento.new("Pollo",84,11.1,3.0,7.6,0.0,20.9,0.2,4.6,2.6,0.3)
			@atun = Alimento.new("Atún",172,5.1,1.4,0.0,0.0,40.6,0.6,1.3,1.9,0.0)
			@pan = Alimento.new("Pan",28,0.9,0.2,13.7,1.4,2.6,2.6,0.1,0.2,0.4,0.8)
			@yogurt = Alimento.new("Yogurt",129,1.9,1.1,20.7,8.1,7.4,0.1,0.5,0.1,0)
			@pizza = Alimento.new("Pizza",853,82.7,38.1,284.3,30.5,97.2,5.1,22.2,14.3,19.6)
			@berenjena = Alimento.new("Berenjena",458,0.8,0.2,26.9,16.2,4.5,0.1,0.1,0.3,13.7)
			@cola = Alimento.new("Coca~Cola",368,0.0,0.0,38.9,38.9,0.0,0.1,0.0,0.0,0.0)
			@galletas = Alimento.new("Galletas",100,22.8,11.4,66.2,33.9,5.6,0.3,5.9,1.3,2.0)
			@tofu = Alimento.new("Tofu, frito",13,2.6,0.4,1.4,0.4,2.2,0.1,0.6,1.5,0.5)
			
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78,[95,94,96],[90,91,89],[2,2,3],[4,5,6],
						  [3,5,4],[4,8,4],[2,6,4],[3,4,5],[1,4,2],[3,4,8],[6,5,4],0.0)
			@paciente2 = Paciente.new("Nuria",23,0,42,1.54,[60,59,60],[80,81,81],[3,4,5],[2,4,3],
						  [2,1,2],[3,4,3],[4,5,4],[3,6,4],[4,3,4],[5,5,4],[3,4,5],0.12)
			@paciente3 = Paciente.new("Laura",12,0,120,1.65,[150,148,149],[110,119,115],[10,12,12],
						  [13,14,15],[20,30,15],[40,30,20],[50,12,13],[15,14,16],[20,15,13],
						  [12,15,16],[13,14,20],0.12)
			@paciente4 = Paciente.new("Federíco",80,1,50,1.85,[50,58,56],[54,53,50],[20,12,15],[13,14,16],
						  [13,14,16],[12,14,15],[13,15,14],[12,16,17],[18,12,13],[45,46,48],
						  [18,19,22],0.54)
			@paciente5 = Paciente.new("Carlos",26,1,70,2.10,[64,63,62],[85,84,83],[12,14,16],[13,12,11],
						  [15,12,13],[14,14,13],[12,11,10],[20,23,25],[16,15,21],[13,14,15],
						  [18,12,14],0.27)
			
			@menu1 = [@leche,@arroz,@pasta,@ternera,@pollo]
			@menu2 = [@arroz,@ternera,@atun,@yogurt,@berenjena]
			@menu3 = [@arroz,@pizza,@cola,@galletas,@pasta]
			@menu4 = [@arroz,@pasta,@pollo,@berenjena,@tofu]
			@menu5 = [@tofu,@galletas,@pan,@ternera,@pasta]
			@menu6 = [@leche,@pollo,@tofu,@yogurt,@leche]
			
			@menus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu6]
			@pacientes = [@paciente1,@paciente2,@paciente3,@paciente4,@paciente5,@paciente1]
		end
		it "Actividad Física" do
			expect(@paciente1).to respond_to(:actividad)
			expect(@paciente2.get).to be(1349.93)
		end

		it "Utilizando reduce en menú" do
			expect(@menu1.reduce(0){|x, obj|x + obj.kj}).to be(6248.450000000001)
		end

		it "Creando un array de menus con los kj de cada menu" do
			menu = @menus.collect{|men| men.reduce(0){|i, obj|i + obj.kj}} 
			expect(menu).to eq([6248.450000000001, 5544.55, 15705.550000000001, 4866.35, 6239.700000000001, 2150.2])
		end

		it "Creando un array de individuos, con los gastos energéticos" do
			pacientes_get = @pacientes.collect{ |pac| pac.get} 
			expect(pacientes_get).to eq([1977.25, 1349.93, 2452.505, 2068.45, 2585.875, 1977.25])
		end
		it "Diestas para cada individuo" do
			menu = @menus.collect{|men| men.reduce(0){|i, obj|i + obj.kj}} 
			pacientes_get = @pacientes.collect{ |pac| pac.get} 
			menu_min = menu.collect{|i| i * 0.9}
			menu_max = menu.collect{|i| i * 1.1}
			expect(menu_min).to eq([5623.6050000000005, 4990.095, 14134.995, 4379.715, 5615.7300000000005, 1935.1799999999998])
			expect(menu_max).to eq([6873.295000000001, 6099.005000000001, 17276.105000000003, 5352.985000000001, 6863.670000000001, 2365.22])

			
			#expect(pacientes_get.map{|i| i} <= menu_min.map{|i| i}).to be false 
			aux = menu_min.zip(pacientes_get, menu_max)
			aux_ordenado=aux.collect{|i| i.sort{|x,y| x <=> y}}
			#puts aux_ordenado	
			#expect(aux_ordenado.collect{|i| i.map{|x| x} <=> aux.collect{|i| i.map{|x| x}}}).to eq([false, false, false, false, false, true])
		end
	end
	describe "#Nuevo menu" do
		before :each do
		
			@leche = Alimento.new("Leche",100,3.6,2.4,4.6,4.6,3.1,0.1)
			@arroz = Alimento.new("Arroz integral",100,2.5,0.5,71,1.2,8.4,0.01,nil,nil,3.4)
			@pasta = Alimento.new("Pasta",105.0,1.6,0.3,78.4,2.8,13.7,0.1,0.2,0.6,3.4)
			@ternera = Alimento.new("Ternera",209.0,23.8,8.9,0.0,0.0,62.9,0.2,9.2,1.7,0.0)
			@pollo = Alimento.new("Pollo",84,11.1,3.0,7.6,0.0,20.9,0.2,4.6,2.6,0.3)
			@atun = Alimento.new("Atún",172,5.1,1.4,0.0,0.0,40.6,0.6,1.3,1.9,0.0)
			@pan = Alimento.new("Pan",28,0.9,0.2,13.7,1.4,2.6,2.6,0.1,0.2,0.4,0.8)
			@yogurt = Alimento.new("Yogurt",129,1.9,1.1,20.7,8.1,7.4,0.1,0.5,0.1,0)
			@pizza = Alimento.new("Pizza",853,82.7,38.1,284.3,30.5,97.2,5.1,22.2,14.3,19.6)
			@berenjena = Alimento.new("Berenjena",458,0.8,0.2,26.9,16.2,4.5,0.1,0.1,0.3,13.7)
			@cola = Alimento.new("Coca~Cola",368,0.0,0.0,38.9,38.9,0.0,0.1,0.0,0.0,0.0)
			@galletas = Alimento.new("Galletas",100,22.8,11.4,66.2,33.9,5.6,0.3,5.9,1.3,2.0)
			@tofu = Alimento.new("Tofu, frito",13,2.6,0.4,1.4,0.4,2.2,0.1,0.6,1.5,0.5)
			
			@menu1 	= [@leche,@arroz,@pasta,@ternera,@pollo]
			@menu2 	= [@arroz,@ternera,@atun,@yogurt,@berenjena]
			@menu3 	= [@arroz,@pizza,@cola,@galletas,@pasta]
			@menu4 	= [@arroz,@pasta,@pollo,@berenjena,@tofu]
			@menu5 	= [@tofu,@galletas,@pan,@ternera,@pasta]
			@menu6 	= [@leche,@pollo,@tofu,@yogurt,@leche]
			@menu7 	= [@cola,@tofu,@berenjena,@galletas,@arroz]
			@menu8 	= [@arroz,@leche,@atun,@pan,@yogurt]
			@menu9	= [@tofu,@pizza,@pan,@pollo,@pasta]
			@menu10	= [@leche,@galletas,@pollo,@ternera,@atun] 

			@menus = [@menu1,@menu2,@menu3,@menu4,@menu5,@menu6,@menu7,@menu8,@menu9,@menu10]
			
			
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78,[95,94,96],[90,91,89],[2,2,3],[4,5,6],
						  [3,5,4],[4,8,4],[2,6,4],[3,4,5],[1,4,2],[3,4,8],[6,5,4],0.0)
			@paciente2 = Paciente.new("Nuria",23,0,42,1.54,[60,59,60],[80,81,81],[3,4,5],[2,4,3],
						  [2,1,2],[3,4,3],[4,5,4],[3,6,4],[4,3,4],[5,5,4],[3,4,5],0.12)
			@paciente3 = Paciente.new("Laura",12,0,120,1.65,[150,148,149],[110,119,115],[10,12,12],
						  [13,14,15],[20,30,15],[40,30,20],[50,12,13],[15,14,16],[20,15,13],
						  [12,15,16],[13,14,20],0.12)
			@paciente4 = Paciente.new("Federíco",80,1,50,1.85,[50,58,56],[54,53,50],[20,12,15],[13,14,16],
						  [13,14,16],[12,14,15],[13,15,14],[12,16,17],[18,12,13],[45,46,48],
						  [18,19,22],0.54)
			@paciente5 = Paciente.new("Carlos",26,1,70,2.10,[64,63,62],[85,84,83],[12,14,16],[13,12,11],
						  [15,12,13],[14,14,13],[12,11,10],[20,23,25],[16,15,21],[13,14,15],
						  [18,12,14],0.27)
			@paciente6 = Paciente.new("Miguel",50,1,70,1.87,[33,23,45],[53,45,87],[35,35,36],[12,11,14],
						  [15,12,13],[14,14,13],[12,11,10],[20,23,25],[16,15,21],[13,14,15],
						  [18,12,14],0.54)
			@paciente7 = Paciente.new("Juan",60,1,120,1.78,[64,63,62],[85,84,83],[12,14,16],[13,12,11],
						  [20,30,25],[26,24,28],[30,31,40],[35,60,54],[36,25,24],[13,14,15],
						  [18,12,14],0.0)
			@paciente8 = Paciente.new("Juana",53,0,53,2.15,[60,50,62],[85,84,83],[13,11,10],[15,16,13],
						  [13,14,13],[14,14,13],[15,11,13],[20,23,25],[16,15,21],[13,14,15],
						  [18,16,11],0.12)		
			@paciente9 = Paciente.new("La hermana",48,0,70,1.9,[69,63,62],[90,84,96],[15,20,18],[13,12,11],
						  [15,12,13],[14,15,16],[20,15,19],[26,28,27],[60,25,21],[13,14,15],
						  [18,20,14],0.27)		
			@paciente10 = Paciente.new("Airam",40,1,80,1.64,[30,25,65],[75,74,73],[12,14,16],[13,12,11],
						  [15,12,13],[14,14,13],[12,11,10],[10,13,15],[16,15,21],[13,14,15],
						  [18,12,14],0.54)		
			@lista_ind = Lista.new()
			@lista_ind.addt(@paciente1.get)
			@lista_ind.addt(@paciente2.get)
			@lista_ind.addt(@paciente3.get)
			@lista_ind.addt(@paciente4.get)
			@lista_ind.addt(@paciente5.get)
			@lista_ind.addt(@paciente6.get)
			@lista_ind.addt(@paciente7.get)
			@lista_ind.addt(@paciente8.get)
			@lista_ind.addt(@paciente9.get)
			@lista_ind.addt(@paciente10.get)
			
		end

		it "#Ordenados con un bucle for" do
			menus_kcal = @menus.collect{|men| men.reduce(0){|i, obj|i + obj.kcal}}
			expect(menus_kcal).to eq([1047.66, 821.56, 3232.06, 954.2599999999999, 1136.5, 365.99999999999994, 1118.76, 594.06, 2528.7, 924.1999999999999])
			expect(menus_kcal.byfor).to eq([365.99999999999994, 594.06, 821.56,924.1999999999999, 954.2599999999999, 1047.66, 1118.76, 1136.5, 2528.7, 3232.06])
			
			expect(@lista_ind.byfor).to eq([1349.93, 1766.255, 1977.25, 2036.505, 2068.45, 2219.25, 2452.505, 2585.875, 2662.95, 2673.2])
		end

		it "#Ordenados mediante each" do
			menus_kcal = @menus.collect{|men| men.reduce(0){|i, obj|i + obj.kcal}}
			expect(menus_kcal).to eq([1047.66, 821.56, 3232.06, 954.2599999999999, 1136.5, 365.99999999999994, 1118.76, 594.06, 2528.7, 924.1999999999999])
				
			expect(menus_kcal.byeach).to eq([365.99999999999994, 594.06, 821.56,924.1999999999999, 954.2599999999999, 1047.66, 1118.76, 1136.5, 2528.7, 3232.06])
			
			expect(@lista_ind.byeach).to eq([1349.93, 1766.255, 1977.25, 2036.505, 2068.45, 2219.25, 2452.505, 2585.875, 2662.95, 2673.2])
		end
	end
end
