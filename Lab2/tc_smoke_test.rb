require "watir-webdriver"
require "test/unit"
class TestSmoke < Test::Unit::TestCase

	def setup
		@browser = Watir::Browser.new :ff

	end

	def test_google_on_firefox

		@browser.goto "www.google.com"
		a =  @browser.a(:text => "Gmail").flash ? "OK" : "Not OK"
	
		expected = "OK"

		assert_equal(expected, a, "Expected: #{expected} - Got: #{a}")
	end

	def teardown

		@browser.close

	end


end

