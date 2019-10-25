# frozen_string_literal: true

# Дан целочисленный массив. Упорядочить его по убыванию.
# Done by Vadim

a = Array.new(10) { rand(-25..25) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.sort { |a, b| b <=> a }.to_s
