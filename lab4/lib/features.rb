module Project
	class Features
		attr_accessor:string, :x, :y, :z, :teststring
		
		def newobject(z)
			 newstring = String.new(z)
		end
	
		def add_word(z)
			string + z
			# vorde detta vara att göra på sitt egna sätt?
			# string.concat(z)
			# 33 är char för ! ska man göra en ny tabell för detta går ju inte
			# ändra z till .chr då förtör det för dom andra
		end


		def add_word_ascii(x)
			string.concat(x)
		end

		def capital_letter
			string.capitalize 
			 
		end

		def small_letter
			string.downcase
		end
		
		def slice_letter(x,y)
						
			string.slice(x,y)
		end

		def count_letters
			string.length
		end

		def reverse_letters
			string.reverse
		end

		def include_letters(z)
			string.include?(z)
		end

		def add_word_start(z)
			string.prepend(z)
		end
	end
end