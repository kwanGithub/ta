password = "jeng1234"



puts "change your password"
changepassword = gets.chomp
password = changepassword 
puts "#{password}"
puts "confirm your new password"
passwordagain = gets.chomp

if passwordagain == password
	

	puts "your new password is #{password}"
else
	puts "FAIL"

end