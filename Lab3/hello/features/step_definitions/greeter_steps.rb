class CucumberGreeter
	def greet
		"Hello Cucumber!"
	end
end	
	
	#Här matchas given, when och then. Vi förklarar vad som skall
	# göras när regex matchar ordet i given, when och then
	# och lägger till kod som skall utföras när det har matchas?
	
	#regex matchar "/^a greeter$/ i given
	# /^ $/ = matchar allting inom blocket?
	Given /^a greeter$/ do 
		# då skall detta kod block utföras?
		#skall det skapas ett objekt utav cucubmergreeter klassen
		@greeter = CucumberGreeter.new
		
	end
	#Vi matchar "i send it the greet message"
	When /^I send it the greet message$/ do 
		#när detta matchas ger vi @message värde från klass metoder @greeter.greet
		@message = @greeter.greet
	end
	# ??
	# ([^'']*) = matcha allt som kommer upp?
	Then /^I should see "([^'']*)"$/ do |greeting|
	@message.should == greeting
	end
