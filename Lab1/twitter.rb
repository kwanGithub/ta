#encoding: utf-8
#importerar metoder
require "./twitter_metoder.rb"

require "watir-webdriver"

#@browser = Watir::Browser.new :ff


#@browser.goto "https://twitter.com/"


#kör metoden no_password
puts "Runing no_password..."
no_password
#-------------------------------------------------#
#kör metoden user_exists
puts "\nRuning user_exists..."
user_exists
#-------------------------------------------------#
#kör metoden non_existing_user
puts "\nRuning non_existing_user..."
non_existing_user
#-------------------------------------------------#
#kör metoden OK
puts "\nRuning OK..."
ok
#-------------------------------------------------#
