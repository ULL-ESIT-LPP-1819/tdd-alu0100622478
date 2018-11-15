RSpec.describe Lista do
	describe "# Lista " do
		before :each do
			@lista1 = Lista.new()
			@node1 = Node.new()
		end
		it "Existen" do
			expect(@lista1).to be_an_instance_of Lista
			expect(@node1).to be_an_instance_of Node
		end
		it "Existe head en la lista" do
			expect(@lista1.head).to be_nil
		end
		it "Existe tail en la lista" do
			expect(@lista1.tail).to be_nil
		end
		it "Añadir elemento a la lista" do
			@lista1.addt(1)
			expect(@lista1.head.value).to eq(1)
		end
		it "Extraer por la cabeza" do
			@lista1.addt(1)
			@lista1.addt(2)
			@lista1.addt(3)
			@lista1.poph()
			expect(@lista1.head.value).to eq(2)
			expect(@lista1.poph()).to eq(2)
			expect(@lista1.poph()).to eq(3)
			expect(@lista1.poph()).to be nil
		end
		it "Añadir alimentos" do
			@alimento1 = Alimento.new("Leche",100,3.6,2.4,4.6,4.6,3.1,0.1)
			@alimento2 = Alimento.new("Muesli con frutas",45,14,5,56,27,6.3,0.5,6.9,1.8,6)
			@alimento3 = Alimento.new("Café soluble",18,8.3,7.4,65,61,9.8,1.1,nil,nil,3.8)
			@alimento4 = Alimento.new("Arroz integral",100,2.5,0.5,71,1.2,8.4,0.01,nil,nil,3.4)
			@alimento5 = Alimento.new("Caldo de carne",10,14,0.7,0.01,13.4,57,nil,nil,22)
			@lista1.addt(@alimento1)
			@lista1.addt(@alimento2)
			@lista1.addt(@alimento3)
			@lista1.addt(@alimento4)
			@lista1.addt(@alimento5)
			expect(@lista1.poph().sal).to be < 6
		end

	end
end
