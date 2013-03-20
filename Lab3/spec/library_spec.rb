require "spec_helper.rb"

describe "Library Object" do  
	before :all do
		lib_arr = [
			Book.new("JavaScript: The Godd Parts", "Douglast Crockford", :development),
			Book.new("Designing with Web Standards", "Jeffrey Zeldman",  :design),
			Book.new("Dont Make me Think", "Steve Krug", :usability),
			Book.new("JavaScript Patterns", "Stoyan Stefanov", :development),
			Book.new("Responsive Web Design", "Ethan Marcotte", :design),
			]

			File.open "books.yml", "w" do |f|
				f.write YAML::dump lib_arr
			end
		
	end
		before :each do
			@lib = Library.new "books.yml"
		end

		describe "#new" do
			context "with no parameters" do
				it "has have no books" do
					lib = Library.new
					lib.should have(0).books #är lika med lib.books.length.should == 0
				end
			end

			context "with a yml file name parameter" do
				it "has five books" do
					@lib.should have(5).books
				end
			
			end
		end

	
end