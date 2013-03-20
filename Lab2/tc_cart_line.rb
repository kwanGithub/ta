require "test/unit"
require "./cart_line.rb"
require "./product.rb"

class TestCartLine < Test::Unit::TestCase

#uppgift 19
	
	

	def setup
		#Class objekt
		@cartline = CartLine.new("kaffe", 5)
		#product id, name, price, description ="N/A"
		@product = Product.new("", "", 10, "")

	end

	def test_adding_product_and_number_of_items
		#arrange

		
		expected = 6
		#act
		result = @cartline.add_item(1)
		#assert
		assert_equal(expected, result, "Expected: #{expected} - Got:#{result}" )
	end

	def test_not_possible_to_add_negative_interger_to_item
		
		expected = false

		result = @cartline.add_item(-1)
		#assert
		assert_equal(expected, result, "Expected: #{expected} - Got:#{result}" )
	end
	

	def test_removing_item
		#arrange
		expected = 4
		
		#act
		result = @cartline.remove_item(1)
		
		#assert
		assert_equal(expected, result, "Expected: #{expected} - Got:#{result}" )
	end

	def test_items_can_not_less_then_zero
		#arrange
		expected = 0
		
		#act
		result = @cartline.remove_item(6)
		
		#assert
		assert_equal(expected, result, "Expected: #{expected} - Got:#{result}" )
	end
	def test_cartlines_sum
		#arrage
		#körs lokalt endas i denna metoden
		cart_line = CartLine.new(@product, 2)
		expected = 20
		#act
		result = cart_line.calculate_line_totals
		#assert
		assert_equal(expected, result)
	end
end