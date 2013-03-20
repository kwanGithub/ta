class Cart

	@cart_lines 

	attr_accessor :cart_lines

	
	def initialize
		@cart_lines = []
		
	end

	def to_string

		return @cart_lines.size
		  #{}"#{@cart_lines[0].product.price} #{@cart_lines[0].product.name}"
	end

	def add_to_cart(product, amount)
			
		#lägger till produkten i cartline, product är nu coffee och number of items är = 1
		cartline = CartLine.new(product, amount)
		@product = product
		@amount = amount

		
		@cart_lines << cartline
	

	end

	def remove_from_cart(product, amount)
		#om det finns någon prodct som matchar i arrayen tar bort.
		cartline = CartLine.new(product, amount)
		@cart_lines << cartline
		

		return @cart_lines
		
	end

	def add_shipping(amount)
		@shipping = amount
	end

	def calculate_totals #(totals = summa(line_totals) +shipping)

	end

	def show_cart # visar alla cart lines + shipping + totals

	end



end
