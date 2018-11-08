RSpec.describe Nutricion do
 	
 describe "# Alimento" do
  	before :each do
		@alimento1 = Alimento.new("Leche",100,3.6,2.4,4.6,4.6,3.1,0.1,nil,nil,nil)
		@alimento2 = Alimento.new("Muesli con frutas",45,14,5,66,27,6.3,0.5,6.9,1.8,6)
  	end
	it "Nombre" do
		expect(@alimento1.nombre).to eq("Leche")
		expect(@alimento2.nombre).to eq("Muesli con frutas")
	end
	it "Grasas" do
		expect(@alimento1.grasas).to eq(3.6)
		expect(@alimento2.grasas).to eq(14)
	end
	it "Grasas Saturadas" do
		expect(@alimento1.saturadas).to eq(2.4)
		expect(@alimento2.saturadas).to eq(5)
	end
	it "Hidratos de carbono" do
		expect(@alimento1.hidratos).to eq(4.6)
		expect(@alimento2.hidratos).to eq(66)				
	end
	it "Azúcares" do
		expect(@alimento1.azucar).to eq(4.6)
		expect(@alimento2.azucar).to eq(27)
	end
	it "Proteínas" do
		expect(@alimento1.proteina).to eq(3.1)
		expect(@alimento2.proteina).to eq(6.3)
	end
	it "Sal" do
		expect(@alimento1.sal).to eq(0.1)
		expect(@alimento2.sal).to eq(0.5)
	end
	it "Monoinsaturadas" do
		expect(@alimento2.mono).to eq(6.9)
	end
	it "Polisaturadas" do
		expect(@alimento2.poli).to eq(1.8)
	end
	it "Fibra alimentaria" do
		expect(@alimento2.fibra).to eq(6)
	end
	it "Por racion" do
		expect(@alimento1.racion).to eq(100)
		expect(@alimento2.racion).to eq(45)
	end

	it "Valor energético kj" do
		expect(@alimento1.kj).to eq(266.6)
		expect(@alimento2.kj).to eq(1807.6)
	end
	it "valor energético kcal" do
		expect(@alimento1.kcal).to eq(51.4)
		expect(@alimento2.kcal).to eq(405)
	end
	it "Valor energético kj ración" do
		expect(@alimento1.kj_r).to eq(266.6)
		expect(@alimento2.kj_r).to eq(813.42)
	end

		

 end
       
  it "has a version number" do
    expect(Nutricion::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end
end




