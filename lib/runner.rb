require './lib/mastermind'

puts "Welcome to Mastermind"
#prompt play instruction quit
input = ""
mastermind = Mastermind.new

while input != "q"
  print "> "
  input = gets.chomp
  puts mastermind.execute(input)
end
puts "Goodbye!"
