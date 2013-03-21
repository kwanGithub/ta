require "watir-webdriver"



@browser = Watir::Browser.new :ff

@browser.goto "www.google.se"

@browser.text_field(:name => "q").set("cars")

@browser.button.wait_until_present

@browser.button(:name => "btnG").click


if @browser.input(:value => "cars").exists?
	
	puts @browser.div(:id => "resultStats").text
	
else
		puts "not OK"
end



# alternativ ta reslutstats skicka in till en array eller en hash


@browser.close