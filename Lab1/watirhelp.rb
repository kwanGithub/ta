# encoding: utf-8
# .a = kolla länkar
# .button = kolla knappar
# browser.close = stänger ner webbläsaren
# 




require "watir-webdriver"
# Definerar vilken browser jag skall öppna
@browser = Watir::Browser.new :ff
# lägger in address i address fältet
@browser.goto "http://www.keyboardco.com"
# startar browsern och söker efter ordet "Sök" på sidan och blinkar till
@browser.a(:text => "FKBN105M*/UKB*").click 
## söker efter text på sidan och ger meddelandet GG om den hittar 
if  
	@browser.text.include?("results")
	puts "GG"
else
	puts "failed"
end

browser.cell(:xpath =>"/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[3]/table[2]/tbody/tr/td[3]/table/tbody/tr/td[2]/table/tbody/tr[2]/td/table/tbody/tr/td/table/tbody/tr/td/font").click