RSpec.describe Lista do
	describe "# Lista " do
		it "Existe" do
			@lista1 = Lista.new()
			@node1 = Node.new()	
			expect(@lista1).to be_an_instance_of Lista
			expect(@node1).to be_an_instance_of Node
		end
	end
end
