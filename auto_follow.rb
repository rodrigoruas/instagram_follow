require 'watir'
require_relative 'credentials.rb'

user = "luvotels"

browser = Watir::Browser.new :chrome
browser.goto "instagram.com/accounts/login"

puts "Logging in.."
browser.text_field(:name => "username").set "#{$username}"
browser.text_field(:name => "password").set "#{$password}"

browser.button(:text => "Entrar").click

puts "Type Enter if I can go on.."

user_input = gets.chomp

browser.goto "instagram.com/luvotels/"
# browser.button(:text => "Seguir").click

20.times do
  browser.button(:text => "Seguir a pessoa também").click
  browser.button(:text => "Seguindo").click
  browser.button(:text => "Deixar de seguir").click
  sleep(rand(3..5))
end


