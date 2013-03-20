class User
	
	@first_name
	@last_name
	@email 		
	@user_name	
	@id	 		
	@password

	attr_accessor:first_name, :last_name, :email, :user_name, :id, :password, :username, :reg_password

	def initialize(id, username, password)
		
		@id 		= id
		@username 	= username
		@password   = password

		#kollar uppgift 7
		#vilkor för password, om inte password är längre än 6
		unless(password.match(/\w+{6}.$/))
			raise "password to short"		
		end
	end


	def to_string
	
	end

	def full_name
		
		@first_name = first_name
		@last_name  = last_name

		#kollar om firstname och lastname är tomma strängar.
		if (first_name == "" && last_name == "")
			#isåfall returnera "-"
			return "-"
		end

		#kollar om firstname är och lastname är tom sträng.
		if (first_name == "First" && last_name == "")
			#isåfall returnera first_name
			return first_name
		end

		#returnerar first_name och last_name
		return "#{first_name} - #{last_name}"
	end

	def change_password(password, password_again)

		#@password 		= password
		@password_again = password_again

		if password == password_again			
			#sparar det gamla lösenord i en variabel
			@old_password = @password
			@password = password_again
		end

		if password != password_again
			return false
		end	
	end

	def autenticate(password)
		
		#kollar uppgift 8 & 9 & 11
		#kollar om reggat ("old_password") password matchar angivet password	

		if password != @password
			return false
		else
			return true
		end
		
	end

	def method_name
		
	end

	#uppgift 12
	private	
	def get_password

	end
end
