$LOAD_PATH.unshift('../',__FILE__)
require 'articlemanager'
	module Fixtures
		class ArticleManagerTest
			def initialize 
				@controller = Project::Controller.new(output, ArticleManager::ArticleRecordParser.new, ArticleManager::ArticleRepository.new)
			end
			
			def list_all_articles_empty
				@controller.list_all_articles
			end


			class Output
				def messages
					@messages ||= []
				end

				def puts(message)
					messages << message
				end
			
			end
				
			def output
					@output ||= Output.new
			end

		end
	end


			
