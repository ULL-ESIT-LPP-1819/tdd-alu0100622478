RSpec.describe Individuo do
	describe "#Individuo " do
		before :all do
			@individuo1 = Individuo.new("Pedro", 34, 1)
		end
		it "Existe individuo" do
			expect(@individuo1.is_a?(Individuo)).to be(true)
		end
		it "Prueba to_s" do
			expect(@individuo1.to_s).to eq("(Nombre:Pedro; Edad:34; Sexo:1)")
		end

	end	
end
