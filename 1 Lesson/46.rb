# frozen_string_literal: true

# Дан целочисленный массив. Найти максимальный отрицательный элемент.
# Done by Vadim

a = Array.new(10) { rand(-25..25) }
puts 'Start array: ' + a.to_s
puts (a.map! { |e| e *= -1 }).to_s
puts 'Result: ' + (a.max * -1).to_s
