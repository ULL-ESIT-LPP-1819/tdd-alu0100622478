RSpec.describe Individuo do
	describe "#Individuo " do
		before :all do
			@individuo1 = Individuo.new("Pedro", 34, 1)
		end
		it "Existe individuo" do
			expect(@individuo1.is_a?(Individuo)).to be(true)
		end
		it "Existe la clase" do
			expect(@individuo1.class).to be(Individuo)
		end
		it "Superclase" do
			expect(Individuo.superclass).to be(Object)
		end
		it "Responde a" do
			expect(@individuo1).to respond_to(:nombre)
			expect(@individuo1).to respond_to(:edad)
			expect(@individuo1).to respond_to(:sexo)
		end
		it "Prueba to_s individuo" do
			expect(@individuo1.to_s).to eq("(Nombre:Pedro; Edad:34; Sexo:1)")
		end
	end	

	describe "#Paciente" do
		before :all do
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78,[95,94,96],[90,91,89],[2,2,3],[4,5,6],
						  [3,5,4],[4,8,4],[2,6,4],[3,4,5],[1,4,2],[3,4,8],[6,5,4])
		end
		it "Existe paciente" do
			expect(@paciente1.is_a?(Paciente)).to be(true)
		end
		it "Herencia paciente de individuo" do
			expect(@paciente1.is_a?(Individuo)).to be(true)
		end
		it "Clase" do
			expect(@paciente1.class).to be(Paciente)
		end
		it "Superclase" do
			expect(Paciente.superclass).to be(Individuo)
		end

		it "Comprobar la herencia" do
			expect(@paciente1).to respond_to(:nombre)
			expect(@paciente1).to respond_to(:edad)
			expect(@paciente1).to respond_to(:sexo)
		end

		it "Comprobar to_s()" do
			expect(@paciente1.to_s).to eq("((Nombre:Pedro; Edad:34; Sexo:1); Peso:85; Altura:1.78 )")
		end

		it "Expectativa IMC" do
			expect(@paciente1.imc).to eq(26.82742078020452)
		end
		it "Expectativa %grasa" do
			expect(@paciente1.porcentaje_grasa).to eq(23.812904936245417)
		end
		it "IMC según la OMS" do
			expect(@paciente1.imc_oms).to eq("Sobrepeso")
		end
		it "IMC popular" do
			expect(@paciente1.imc_pop).to eq("Sobrepeso")
		end
		it "Relación cintura cadera" do
			expect(@paciente1.rcc).to eq("Alto")
		end
		it "Medias" do
			expect(@paciente1.media_bici).to eq(2)
			expect(@paciente1.media_trici).to eq(5)
			expect(@paciente1.media_subes).to eq(4)
			expect(@paciente1.media_supra).to eq(5)
			expect(@paciente1.media_muslo).to eq(4)
			expect(@paciente1.media_abdom).to eq(4)
			expect(@paciente1.media_pecho).to eq(2)
			expect(@paciente1.media_axilar).to eq(5)
			expect(@paciente1.media_pierna).to eq(5)
		end
	end
	describe "#Lista+Individuo" do
		
		before :all do
			@lista1 = Lista.new()
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
		it "Existe lista" do
			expect(@lista1.is_a?(Lista)).to be(true)
		end
		it "Herencia Lista Object" do
			expect(@lista1.is_a?(Object)).to be(true)
		end
		it "Clase" do
			expect(@lista1.class).to be(Lista)
		end
		it "Superclase" do
			expect(Lista.superclass).to be(Object)
		end
		it "Clasificar por IMC" do
			@lista1.addt(@paciente1)
			@lista1.addt(@paciente2)
			@lista1.addt(@paciente3)
			@lista1.addt(@paciente4)
			@lista1.addt(@paciente5)
			expect(@lista1.poph().imc).to be > 25
			expect(@lista1.poph().imc).to be < 25
			expect(@lista1.poph().imc).to be > 25
			expect(@lista1.poph().imc).to be < 25
			expect(@lista1.poph().imc).to be < 25
		end
	end
end
