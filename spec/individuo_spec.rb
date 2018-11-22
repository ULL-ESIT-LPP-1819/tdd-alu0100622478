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
		it "Responde a" do
			expect(@individuo1).to respond_to(:nombre)
			expect(@individuo1).to respond_to(:edad)
			expect(@individuo1).to respond_to(:sexo)
		end
		it "Prueba to_s individuo" do
			expect(@individuo1.to_s).to eq("(Nombre:Pedro; Edad:34; Sexo:1)")
		end

	end	
end
