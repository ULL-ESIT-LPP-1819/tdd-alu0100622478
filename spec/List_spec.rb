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
		end

	end
end
