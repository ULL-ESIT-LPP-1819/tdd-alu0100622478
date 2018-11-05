RSpec.describe Nutricion do
 	
 describe "# Alimento" do
  	before :each do
		@alimento1 = Alimento.new("Leche",3.6)
  	end
	it "Nombre" do
		expect(@alimento1.nombre).to eq("Leche")
	end
	it "Grasas" do
		expect(@alimento1.grasas).to eq(3.6)
	end
 end
       
  it "has a version number" do
    expect(Nutricion::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end
end




