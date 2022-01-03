#require "./players.rb"
print "What does 3 + 5 equal? "
Player1 = gets.chomp
if Player1 === "8"
  print "score = 3/3"
  print "Yes! you are correct."
end
if Player1 != "8"
  print "score = 2/3"
  print "Seriously? No!"
end
print "What does 4 + 5 equal?  "
Player2 = gets.chomp
print "What does 5 + 5 equal?  "
Player1 = gets.chomp
print "What does 6 + 5 equal?  "
Player2 = gets.chomp
