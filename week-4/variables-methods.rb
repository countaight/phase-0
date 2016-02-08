puts 'Hello there, and what\'s your name?'
name = gets.chomp
puts 'Oh yea? And what\'s your middle name?'
middle_name = gets.chomp
puts 'Interesting, and what is your last name?'
last_name = gets.chomp
puts 'Your name is ' + name + ' ' + middle_name + ' ' + last_name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + ' ' + middle_name + ' ' + last_name + '. :)'

puts 'Say... what\'s your favorite number?'
fav_num = gets.chomp
big_num = fav_num.to_i + 1
puts 'That\'s totes cool bruh, but don\'t you think ' + big_num.to_s + ' is a much bigger, better number?'