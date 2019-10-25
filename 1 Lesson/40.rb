# frozen_string_literal: true

# Дан целочисленный массив. Найти количество максимальных элементов.
# Done by Vadim

a = Array.new(10) { rand(50) }
counter = 0
puts 'Start array: ' + a.to_s
a.each { |e| a.max == e ? counter += 1 : e }
puts 'Result: ' + counter.to_s
