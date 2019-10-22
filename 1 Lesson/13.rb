# frozen_string_literal: true

# Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.rotate(1).to_s
