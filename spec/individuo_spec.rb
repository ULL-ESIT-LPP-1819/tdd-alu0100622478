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
			@paciente1 = Paciente.new("Pedro",34,1,85,1.78)
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

	end
end
