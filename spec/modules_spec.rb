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


end
