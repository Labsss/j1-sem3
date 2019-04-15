require 'time'
require_relative 'lib/user.rb'
require_relative 'lib/event.rb'

Juh = User.new("jujuh@gmail.com", 28)
Juan = User.new("juanito86@gmail.com", 26)
Lili = User.new("Lililili@google.com", 24)

Apero = Event.new("2019-04-15 19:30", 90, "Apero de la victoire", ["jujuh@gmail.com", "juanito86@gmail.com", "Lililili@google.com"])

#puts User.all
puts Apero