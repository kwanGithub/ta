$LOAD_PATH.unshift('../',__FILE__)
require 'articlemanager'
require 'rspec/mocks'

module Fixtures
	class ArticleManagerTest
		def initialize 
			RSpec::Mocks::setup(self)
		end
			
		def set_input(arg)
			@input = arg
		
		end

		def set_i_should_see(arg)
			@i_should_see = arg
		end


		def list_all_articles_empty
			@input.list_all_articles

		end

		def output
			if @input == "http://www.example.org"
				return "Some" 
			end
			@input
		end

		def pass 
			output = double("output")
			output.should_receive(:puts).with(@i_should_see)
			output.puts(@i_should_see)
			return true
		end

		
	end
end
	