RSpec.describe Module do
	describe "#Comparable Alimento" do
		before :all do
			@leche 	= Alimento.new("Leche",100,3.6,2.4,4.6,4.6,3.1,0.1)
			@muesli	= Alimento.new("Muesli con frutas",45,14,5,56,27,6.3,0.5,6.9,1.8,6)
			@cafe	= Alimento.new("Café soluble",18,8.3,7.4,65,61,9.8,1.1,nil,nil,3.8)
			@arroz	= Alimento.new("Arroz integral",100,2.5,0.5,71,1.2,8.4,0.01,nil,nil,3.4)
			@caldo	= Alimento.new("Caldo de carne",10,19.8,14,0.7,0.01,13.4,57,nil,nil,22)	

		end
		it "Existe comparable Alimento (Etiqueta)" do
			expect(@leche < @muesli).to be true
			expect(@muesli > @cafe).to be true
			expect(@muesli <= @leche).to be false
			expect(@leche == @cafe).to be false
			expect(@caldo >= @arroz). to be true
		end
	end
	describe "#Comparable individuo" do
		before :all do
			@individuo1 = Individuo.new("Pedro",34,1)
			@individuo2 = Individuo.new("Nuria",23,0)
			@individuo3 = Individuo.new("Laura",12,0)
			@individuo4 = Individuo.new("Federíco",80,1)
			@individuo5 = Individuo.new("Carlos",26,1)
		end

		it "Existe comparable Individuo" do
			expect(@individuo1 < @individuo2).to be false		
			expect(@individuo2 > @individuo3).to be true		
			expect(@individuo3 == @individuo3).to be true		
			expect(@individuo3 <= @individuo4).to be true		
			expect(@individuo4 >= @individuo5).to be true		
		end
	end
	describe "#Comparable Paciente" do
		before :all do
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78,[95,94,96],[90,91,89],[2,2,3],[4,5,6],
						 [3,5,4],[4,8,4],[2,6,4],[3,4,5],[1,4,2],[3,4,8],[6,5,4])
			@paciente2 = Paciente.new("Nuria",23,0,42,1.54,[60,59,60],[80,81,81],[3,4,5],[2,4,3],
						  [2,1,2],[3,4,3],[4,5,4],[3,6,4],[4,3,4],[5,5,4],[3,4,5])
			@paciente3 = Paciente.new("Laura",12,0,120,1.65,[150,148,149],[110,119,115],[10,12,12],
						  [13,14,15],[20,30,15],[40,30,20],[50,12,13],[15,14,16],[20,15,13],
						  [12,15,16],[13,14,20])
			@paciente4 = Paciente.new("Federíco",80,1,50,1.85,[50,58,56],[54,53,50],[20,12,15],[13,14,16],
						  [13,14,16],[12,14,15],[13,15,14],[12,16,17],[18,12,13],[45,46,48],
						  [18,19,22])
			@paciente5 = Paciente.new("Carlos",26,1,70,2.10,[64,63,62],[85,84,83],[12,14,16],[13,12,11],
						  [15,12,13],[14,14,13],[12,11,10],[20,23,25],[16,15,21],[13,14,15],
						  [18,12,14])
		end

		it "Existe comparable Paciente" do
			expect(@paciente1 > @paciente2).to be true		
			expect(@paciente3 < @paciente2).to be false		
			expect(@paciente3 == @paciente3).to be true		
			expect(@paciente3 <= @paciente4).to be false		
			expect(@paciente4 >= @paciente5).to be false
		end

	end
		
	describe "#Enumerable Listas" do
		before :all do
			@lista1 = Lista.new()
			@lista2 = Lista.new()
			@lista3 = Lista.new()

			@individuo1 = Individuo.new("Pedro",34,1)
			@individuo2 = Individuo.new("Nuria",23,0)
			@individuo3 = Individuo.new("Laura",12,0)
			@individuo4 = Individuo.new("Federíco",80,1)
			@individuo5 = Individuo.new("Carlos",26,1)
			
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78,[95,94,96],[90,91,89],[2,2,3],[4,5,6],
						 [3,5,4],[4,8,4],[2,6,4],[3,4,5],[1,4,2],[3,4,8],[6,5,4])
			@paciente2 = Paciente.new("Nuria",23,0,42,1.54,[60,59,60],[80,81,81],[3,4,5],[2,4,3],
						  [2,1,2],[3,4,3],[4,5,4],[3,6,4],[4,3,4],[5,5,4],[3,4,5])
			@paciente3 = Paciente.new("Laura",12,0,120,1.65,[150,148,149],[110,119,115],[10,12,12],
						  [13,14,15],[20,30,15],[40,30,20],[50,12,13],[15,14,16],[20,15,13],
						  [12,15,16],[13,14,20])
			@paciente4 = Paciente.new("Federíco",80,1,50,1.85,[50,58,56],[54,53,50],[20,12,15],[13,14,16],
						  [13,14,16],[12,14,15],[13,15,14],[12,16,17],[18,12,13],[45,46,48],
						  [18,19,22])
			@paciente5 = Paciente.new("Carlos",26,1,70,2.10,[64,63,62],[85,84,83],[12,14,16],[13,12,11],
						  [15,12,13],[14,14,13],[12,11,10],[20,23,25],[16,15,21],[13,14,15],
						  [18,12,14])
			
		end

		it "Existe enumerable en Lista" do
			@lista1.addt(13)
			@lista1.addt(1)
			@lista1.addt(6)
			@lista1.addt(2)
			
			@lista2.addt(@individuo1)
			@lista2.addt(@individuo2)
			@lista2.addt(@individuo3)
			@lista2.addt(@individuo4)
			@lista2.addt(@individuo5)
			
			@lista3.addt(@paciente1)
			@lista3.addt(@paciente2)
			@lista3.addt(@paciente3)
			@lista3.addt(@paciente4)
			@lista3.addt(@paciente5)
			
			expect(@lista1.count).to eq(4)
			expect(@lista2.collect{|ind| ind.nombre}).to eq("Pedro", "Nuria", "Laura", "Federíco", "Carlos")
			expect(@lista3.select{|i| i.imc < 25}).to eq([@paciente2, @paciente4, @paciente5])
			expect(@lista1.max).to eq(13)
			expect(@lista1.min).to eq(1)
			expect(@lista1.sort).to eq(1,2,6,13)
			expect(@lista2.sort).to eq(@individuo3,@individuo2,@individuo5,@individuo1,@individuo4)
		end
	
	end

end
