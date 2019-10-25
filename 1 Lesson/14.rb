# frozen_string_literal: true

# Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.
# Done by Vadim

a = Array.new(10) { rand(50) }

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.rotate(-1).to_s
