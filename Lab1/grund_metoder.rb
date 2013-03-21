# uppgift 2
def verify_text(word)

	if @browser.text.include?(word)
		puts "Test 2: OK!" 
		@count +=1
	else 
		puts "Test 2: FAILED!" 
	end
end

#uppgift 4
def option_scan
	
	#tom array som ska hålla options
	optionArray = []

	linklist = @browser.select(:id => "entry_1")

	linklist.options.each { |option|
		
		#pushar alla options in i optionArray
		optionArray << 	option.text
			
	}
	if optionArray.count == 5
		puts "Test 4: OK!"
		@count +=1 
	else
		puts "Test 4: FAILED!" 
	end
end

#uppgift 5
def click(text)
 	
@browser.a(:text => text).click
 		
	if (@browser.image(:src => "//ssl.gstatic.com/images/logos/google_logo_41.png").exists?) && (@browser.url == "https://accounts.google.com/ServiceLogin?service=writely&passive=1209600&continue=http://docs.google.com/%23&followup=http://docs.google.com/&ltmpl=homepage")
		puts "Test 5: OK!"
		@count +=1 
	else 
		puts "Test 5: FAILED!" 
	end
end


#uppgift 6
def print_screen
  screenshot = @browser.screenshot.save 'screenshot.png'
  if screenshot then
  	puts "Test 6: OK!"
  	@count +=1
  else
  	puts "Test 6: FAILED!"
  end	
end

#uppgift 7
def input_field 
	@browser.goto "bit.ly/watir-webdriver-demo"
	@browser.text_field(:id, "entry_0").set("Test")
	@browser.select_list(:id, "entry_1").select("Ruby")
	@browser.label(:text => "What is ruby?").parent.radio(:value => "A programming language").set
	@browser.label(:text => "What versions of ruby?").parent.checkbox(:value => '1.8.6').set
	@browser.label(:text => "What versions of ruby?").parent.checkbox(:value => '1.8.7').set
	@browser.label(:text => "What versions of ruby?").parent.checkbox(:value => '1.9.2').set

	@browser.button(:value => "Skicka").click

	if(@browser.url == "https://spreadsheets.google.com/spreadsheet/formResponse?formkey=dGtlWGJjbWhuSlAyMHhLdXc2eE0wX2c6MQ&ifq")
		puts "Test 7: OK!"
		@count +=1
  	else
  		puts "Test 7: FAILED!"
  	end
 end

#uppgift 8
def community
	@browser.goto "http://watir.com/"

	@browser.a(:text=> "Community").click

	link1 = @browser.a(:text => "Blog at WordPress.com").wait_until_present

	link2 = @browser.a(:text => "Watir General").wait_until_present
	
	if link1 && link2
		puts "Test 8: OK!"
		@count +=1
	else
		puts "Test 8: FAILED!"
	end	
end

def counter
	puts "#{@count}/6 Tests Passed"
end