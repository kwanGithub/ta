require "test/unit"
require "./cart.rb"
require "./cart_line.rb"
require "./product.rb"

	#Skriv ett lämpligt antal tester för att kontrollera att vi kan 
	#lägga till och ta bort produkter i en cart. Kontrollera att calculate 
	#totals gör rätt beräkningar. Kontrollera även att show_cart skriver ut 
	#innehållet i en cart, samt visar den totala kostnaden, inklusive shipping för en cart.
	
	#EGNA TANKAR OM HUR VI SKALL LÖSA DETTA!
	# Skapa 2 objekt ur classen cart_line?
	# Skapa en array cart = [] pusha in carline objekten in dit, använd sen metoden calculate_totals för priset
	# show_cart metoden itererar genom cart [] och visar alla cart lines och lägger till shipping amount på slutet, 
	

	# remove_from_cart metoden går in i cart arrayen och tar bort ett index
	# add to cart pusher in ett object utav cart_line klassen i arrayen
	# skapa en initialize med argumentet Cartline för cart



class TestCart < Test::Unit::TestCase

	def setup
		@cart = Cart.new
		@coffee = Product.new("1", "coffee", 10)
		@milk   = Product.new("2", "milk", 5)
	end

	# bekräftar att produkt har lagts till i @cart
	def test_adding_cart_line_to_cart
		#arrange
		#skapar 2 ny produkter
		
		@cart.add_to_cart(@coffee, 1)		
		@cart.add_to_cart(@milk, 3)
		
		#skapar object utav klassen cart, så @cart har nu 1st coffee..
		result = @cart.to_string
		

		expected = 2
		
		#act
		
		#assert
		
		assert_equal(expected, result, "Expected: #{expected} - Got: #{result}")
	end
=begin
	def test_removing_from_cart
		#arrange
		@cart
		@cart.add_to_cart(@coffee, 1)		
		@cart.add_to_cart(@milk, 3)
		#act
		@cart.remove_from_cart(@coffe, 1)
		expected = "whatever"
		result = @cart.cart_lines
		#assert
		assert_equal(expected, result, "Expected: #{expected} - Got: #{result}")
	end
=end
end

	


	

