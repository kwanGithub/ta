# encod "/.utf-8
load "grund_metoder.rb"
require "watir-webdriver"
# Definerar vilken browser jag skall öppna
@browser = Watir::Browser.new :ff

# lägger in address i address fältet
@browser.goto "bit.ly/watir-webdriver-demo"
# startar browsern och söker efter ordet "Sök" på sidan och blinkar till

@count = 0

#----------------------------------------------------#
# uppgift 2
@browser.button(:text => "Skicka").click

word = "*Obligatorisk"

verify_text(word)
#----------------------------------------------------#



#----------------------------------------------------#
#uppgift 4
option_scan
#----------------------------------------------------#

#----------------------------------------------------#
#uppgift 5
text = "Google Dokument"

click(text)
#----------------------------------------------------#


#----------------------------------------------------#
#uppgift 6

print_screen



#----------------------------------------------------#

#----------------------------------------------------#
#uppgift 7
input_field
#----------------------------------------------------#

#----------------------------------------------------#
#uppgift 8
community
#----------------------------------------------------#

#----------------------------------------------------#
#uppgift 9
counter
#----------------------------------------------------#

