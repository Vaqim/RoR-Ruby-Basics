# Дано целое число. Найти сумму его цифр.

num, sum = gets.chomp, 0
num.split('').each{|e| sum += e.to_i}
puts sum.to_s
