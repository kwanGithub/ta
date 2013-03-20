# method login, uppgift 10.1 & 10.2 ????


def u_p_submit(username, password)
	
	# om if satsens vilkor uppfylls kör blocket
	if @username && @password
		#fyller i username och password
		@browser.text_field(:id, "signin-email").set(@username)
		@browser.text_field(:id, "signin-password").set(@password)
		#klickar knappen på sidan 
		@browser.button(:class => "submit btn primary-btn flex-table-btn js-submit").click
	else
		puts "Login NOT OK (Please supply username or password)"
		exit
	end	
end

def verify_logged_in
=begin
	#bekräftar om drop-down meny till signout är närvarande
	if @browser.i(:class => "nav-session").exists?
		#klickar på sign out menyn
		@browser.i(:class => "nav-session").click
	end
=end			
	#verifiera att sign out länk finns
	if @browser.a(:id => "signout-button").exists?
		puts "verify_logged_in:OK"
	else
		puts "verify_logged_in:NOT OK"
	end

end

#uppgift 10.4a
def password_not_empty
	
	#4a
	#kollar efter tomt password
	empty_password = ""

	#om inget password är angivet
	if @password == empty_password
		#kollar om navbar element efter inlogging är tillgängligt 
		unless @browser.a(:id => "nav-session").exists?
			puts "password_not_empty: NOT OK"
		end
	else
		# password finns
		puts "password_not_empty: OK"
	end	
end

#uppgift 10.4b
def username_ok_password_no_ok
	reg_user = "adam.a.jeng@hotmail.com"
	reg_password = "jeng1234"

	#kollar om rätt username angetts men fel password
	if @username == reg_user
		if @password != reg_password
			#kollar om navbar element efter inlogging är tillgängligt 
			unless @browser.a(:id => "nav-session").exists?
				puts "username_ok_password_no_ok: NOT OK"
			end
		end	
	else
		# Meddelar att testet failade pga icke existerande user (egentligen inte vad metoden ska kolla efter)
		puts "NOT OK (User dosn't exists)"
	end	
end

#uppgift 10.4d
def user_exists
	#4d
	reg_user = "adam.a.jeng@hotmail.com"

	# om angivet username inte stämmer med registrerat username
	unless @username == reg_user
		
		#kollar om navbar element efter inlogging är tillgängligt 
		unless @browser.a(:id => "nav-session").exists?
			puts "user_exists :NOT OK"
		end			
	else
		# om username stämmer överens med registrerat username
		puts "user_exists:OK"
	end	
end

