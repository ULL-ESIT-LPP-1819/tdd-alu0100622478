RSpec.describe Nutricion do
 	
 describe "# Alimento" do
  	before :each do
	  @alimento1 = Alimento.new("Leche")
  	end
	it "Nombre" do
		expect(@alimento1.nombre).to eq("Leche")
	end
 end
       
  it "has a version number" do
    expect(Nutricion::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end
end




