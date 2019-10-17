# Дано целое число. Найти сумму его цифр.

num, sum = gets.chomp.to_i, 0
num.to_s.split('').each{|e| sum += e.to_i}
puts sum.to_s
