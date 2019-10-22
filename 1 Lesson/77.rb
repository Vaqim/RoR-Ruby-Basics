# frozen_string_literal: true

# Дано целое число. Найти сумму его цифр.

num = gets.chomp
sum = 0
num.split('').each { |e| sum += e.to_i }
puts sum.to_s
