# Программа для шифрования строки в MD5, SHA1

require 'digest'

puts "Введите слово или фразу для шифрования: "
user_input = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"
puts "3. SHA2"
user_choice = STDIN.gets.to_i

puts "Вот что получилось:"

case user_choice
when 1 then puts Digest::MD5.hexdigest(user_input)
when 2 then puts Digest::SHA1.hexdigest(user_input)
else puts user_input
end