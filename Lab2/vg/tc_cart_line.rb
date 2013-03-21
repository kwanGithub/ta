require "test/unit"
require "./cart_line.rb"
require "./product.rb"

class TestCartLine < Test::Unit::TestCase

#uppgift 19

	def setup
		product = Product.new("1", "Kaffe", 10, "" )
		@cartline = CartLine.new( product , 5)

	end

	def test_adding_product_and_number_of_items
		#arrange

		
		expected = 6
		#act
		number_of_items = @cartline.add_item(1)
		#assert
		assert_equal(expected, number_of_items, @cartline.to_string )
	end

	def test_removing_item
		#arrange
		

		expected = 4
		#act
		number_of_items = @cartline.remove_item(1)
		#assert
		assert_equal(expected, number_of_items, "Expected: #{expected} - Got: #{number_of_items}")
	end
	def test_cartline_sum
		#arrange 
		#skapar ett ny objekt utav klasen Product med argumentet "price" satt till 10
		product = Product.new("", "", 10, "")
		#skapar ett ny objekt utav klassen cartline med argumentet "number of items" satt till 4
		cartline = CartLine.new(product, 4)
		
		#act
		expected = 40

		totals = cartline.calculate_line_totals
		#assert

		assert_equal(expected, totals, "Expected: #{expected} - Got: #{totals}")

	end


end