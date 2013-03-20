class CartLine

	def initialize(product, number_of_items = 0)

		@product 		 = product
		@number_of_items = number_of_items

	end

	attr_accessor :product, :number_of_items

	def to_string

		return "Expected: #{expected} - Got: #{number_of_items}"

	end

	def add_item(number)
		
		@number_of_items += number
		

		return @number_of_items 
		
	
	end

	def remove_item(number)
		
		
		unless (number_of_items < 0)			
			@number_of_items -= number
			return @number_of_items 
		end
		
	end

	def calculate_line_totals
		
		 result = (product.price * @number_of_items) 
		 return result
	end

end


