class RSpecGreeter
	def greet
		"Hello RSpec!"
	end
end



#vi beskriver vad det är vi ska testa genom describe
describe "RSspec Greeter" do 
	#Vi deklarerar vad metoden greet gör. Den returnerar en sträng, Och när strängen visas 
	it "should say 'hello RSpec!' when it recives the greet () message" do
		#ska vi skapa ett objekt utav klassen RSpecGreeter
		greeter = RSpecGreeter.new
		#här deklarerar vi variabelar. t.ex #act i test/unit. Variabeln greeting är lika med greeter.greet metoden
		greeting = greeter.greet
		#det här är som #assertion i test/unit vi förväntar oss att greeting variabeln skall vara lika med strängen som vi har deklarerat
		greeting.should == "Hello RSpec!"
	end
	
end

