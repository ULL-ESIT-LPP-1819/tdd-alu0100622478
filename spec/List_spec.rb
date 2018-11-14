RSpec.describe Lista do
	describe "# Lista " do
		it "Existe" do
			@lista1 = Lista.new()	
			expect(@lista1).to be_an_instance_of Lista
		end
	end
end
