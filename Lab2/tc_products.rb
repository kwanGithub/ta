require "test/unit"
require "./product.rb"

class TestProduct < Test::Unit::TestCase
	def setup
		@product = Product.new("1", "kaffe", "10.00")
	end

	#uppgift 13
	def test_can_not_initialize_product_without_three_args
		#arrage
		
		#act

		#assert
		assert_raise(ArgumentError) {Product.new}
	end
	#uppgift 14
	def test_verify_description_default
		#arrage

		@product.description 
		expected = "N/A"
		#act
		product = @product.description 
		#assert
		assert_equal(expected, product)
	end
	
	
end