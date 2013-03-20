#importerar metoder
require "./grundmetoder_uppgift10.rb"

require "watir-webdriver"

@browser = Watir::Browser.new :ff


@browser.goto "https://twitter.com/"


@username = "adam.a.jeng@hotmail.com"
@password = "jeng123"



#kör metoden password_empty
password_not_empty

#kör metoden username_no_password	
username_ok_password_no_ok

#kör metoden user_exists	
user_exists

#kör metoden u_p_submit
u_p_submit(@username, @password)

#kör metoden verify_logged_in
verify_logged_in

#stänger browsern
#@browser.close
