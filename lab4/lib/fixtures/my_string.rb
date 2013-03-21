$LOAD_PATH.unshift('../',__FILE__)
require 'features'
module Fixtures
	class MyString
		def initialize
			@internal = Project::Features.new
		end
		
		
		def set_string(arg1)
			@internal.string = arg1
		end
		
		def set_x(arg1)
			@x = arg1.to_i
			
		end
		
		def set_y(arg1)
			@y = arg1.to_i
		end

		def set_z(arg1)
			@z = arg1
		end

		def set_teststring(arg1)
			@teststring = arg1
		end

###################################################################


		def new
			@internal.newobject(@internal.string)
		end

		def concatenate
			@internal.add_word(@z)

		end

		def concatenate_ascii
			@internal.add_word_ascii(@x)

		end

		def capitalize
			@internal.capital_letter

		end

		def to_lower
			@internal.small_letter
		end

		def slice
						
			@internal.slice_letter(@x,@y)
		end

		def count
			@internal.count_letters
		end

		def reverse
			@internal.reverse_letters
		end

		def include
			@internal.include_letters(@z)
		end

		def prepend
			@internal.add_word_start(@z)
		end
	end
end	