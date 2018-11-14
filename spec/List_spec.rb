RSpec.describe Lista do
	describe "# Lista " do
		it "Existen" do
			@lista1 = Lista.new()
			@node1 = Node.new()	
			expect(@lista1).to be_an_instance_of Lista
			expect(@node1).to be_an_instance_of Node
		end
		it "Existe head en la lista" do
			@lista1 = Lista.new()
			expect(@lista1.head).not_to be_nil
		end
	end
end
