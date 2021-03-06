# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.
# Done by Vadim

a = Array.new(10) { rand(50) }
counter = 0
puts 'Start array: ' + a.to_s
a.reverse.each { |e| e == a.max ? break : counter += 1 }
puts 'Result: ' + counter.to_s
