require "spec_helper.rb"

#i describe säger vi till vad det är vi skall testa
#allt mellan första blocket do till end är vad vi skall testa inom book
describe Book do  
	#before blocket each = är kod vi kommer vi kommer att använda innan testet t.ex skapa variablar 
	# som vi gör med @book. Som #arrange i unit/test 
	#before all då kör vi koden endast koden innan testet en gång.
	before :each do
		#skapar en instansvariable här för att kunna nå den från andra rb filer
		@book = Book.new "Title", "Author", :category
	end
	#vi kommer att göra ett test på book.(New)
	describe "#new" do
		#säger att när vi kallar på .New så skapar vi ett objekt utav klassen Book
		it "returns a new book object" do
			#book bör vara en instans utav book
			@book.should be_an_instance_of Book
		end
		#test 2
		it "throws an ArgumentError when given fewer than 3 parameters" do
			lambda {Book.new "Title", "Author"}.should raise_exception ArgumentError
		end

		describe "#title" do
			it "returns the correct title" do
				#eql ==
				@book.title.should eql "Title"
			end
		end

		describe "#author" do
			it "returns the correct autohor" do
				@book.author.should eql "Author"
			end
		end

		describe "#category" do
			it "returns the correct category" do
				@book.category.should eql :category
			end
		end


	end
end