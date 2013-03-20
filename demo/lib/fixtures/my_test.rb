$LOAD_PATH.unshift('../',__FILE__)
require 'user'
module Fixtures
	class MyTest
		def initialize
			@user = UserProject::User.new
		end
		
		def set_first_name(arg1)
			@user.first_name = arg1
		end
		
		def set_last_name(arg1)
			@user.last_name = arg1
		end
		
		def fullname
			@user.full_name
		end
	end
end
