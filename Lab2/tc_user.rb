require "test/unit"
require "./user.rb"


class TestUser < Test::Unit::TestCase

	def setup
		# sätts för att ge tillgång till testerna (initialize)
		@user = User.new("1", "kevin", "hellohello")
		
	end

	#uppgift 3
	def test_fullname_returns_first_and_last_name

		#arrange

		@user.first_name = "First"
		@user.last_name  = "Last"
		expected = "First - Last"

		#act
		full_name = @user.full_name 

		#assert
		assert_equal(expected, full_name, "Expected: #{expected} - Got:#{full_name}")
	end
	
	#uppgift 4
	def test_case_first_name_and_lastname_empty
		#arrange
		@user.first_name = "" 
		@user.last_name  = ""
		expected = "-"
		#act
		full_name = @user.full_name 
		#assert
		assert_equal(expected, full_name, "Expected: #{expected} - Got:#{full_name}")
	end

	#uppgift 5
	def test_case_fullname_return_first_name_if_only_firstname_is_set
		#arrange
		@user.first_name = "First" 
		@user.last_name  = ""
		expected = "First"

		#act
		full_name = @user.full_name

		#assert
		assert_equal(expected, full_name, "Expected: #{expected} - Got:#{full_name}")
	end

	#uppgift 6

	def test_can_not_init_user_with_out_username_and_password
		#Om något eller flera argument saknas, då är testet ok
		assert_raise(ArgumentError) {User.new}
	end

	#uppgift 7	
	def test_can_not_init_user_with_password_shorter_then_6_characters
		#arrange
		
		
		
		
		#assert
		assert_raise(RuntimeError) {User.new("1","kevin","hello")}
	end

	#uppgift 8
	def test_check_true_password
		#arrage
		#sätter reg_password 
		#@user.password ="hellohello"
		expected = true
		#act
		#kollar password argumentet
		autenticate = @user.autenticate("hellohello")
		#assert
		assert_equal( expected, autenticate, "Expected: #{expected} Got: #{autenticate}" )
	end

	#uppgift 9
	def test_check_false_password
		#arrage
		#sätter reg_password
		#@user.password ="hellohell"
		expected = false
		#act
		#kollar password argumentet
		autenticate = @user.autenticate("hellohell")
		#assert
		assert_equal( expected, autenticate, "Expected: #{expected} Got: #{autenticate}" )
	end

	#uppgift 10
	def test_if_change_passwords_arguments_are_identical
		#arrage
	
		expected = false
		
		#act
		#stoppar in argumenten i change_password metoden
		change_password = @user.change_password("byebyebye", "byebye")
		
		#assert
		assert_equal( expected, change_password, "Expected: #{expected} Got: #{change_password}" )
	end

	#uppgift 11
	def test_if_change_password_changes_password_when_password_and_password_again_are_identical
		#arrage
		#
		#@old_password = old_password

		expected = false
		#act
		#change = @user.change_password("byebyebye", "byebyebye")
		autenticate = @user.autenticate(@old_password)
		#assert
		assert_equal(expected, autenticate)
	end

	#uppgift 12
	def test_if_password_private
		#assert
		assert_raise(NoMethodError) {@user.get_password}
	end
end
