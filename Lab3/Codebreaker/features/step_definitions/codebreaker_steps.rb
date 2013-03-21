class Output
	def messages
		@messages ||= []
	end

	def puts(message)
		messages << message
	end
end

def output
	@output ||= Output.new
end

Given /^I am not yet playing$/ do 	
end
# när regex matchar allt inom /^$/ skapas ett nytt objekt utav klassen game
When /^I start a new game$/ do
	game = Codebreaker::Game.new(output)
	# game med start metoden kräver arugment
	game.start("1234")
end

Then /^I should see "([^'']*)"$/ do |message|
	output.messages.should include(message)
end

Given /^the secret code is "([^'']*)"$/ do |secret|
	@game = Codebreaker::Game.new(output)
	@game.start(secret)
end

When /^I guess "([^'']*)"$/ do |guess|
	@game.guess(guess)
end

Then /^the mark should be "([^'']*)"$/ do |mark|
	output.messages.should include(mark)
end

# ska man inte skapa en klass för denna med som i den förra?