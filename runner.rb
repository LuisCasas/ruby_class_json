require 'pp'
require_relative 'user'

#user = User.new 'John.snow@email.com', 'John Snow'
user = User.new('Tyron@email.com', 'Tyron Lannister')

pp user

user.save