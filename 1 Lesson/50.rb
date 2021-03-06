# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.
# Done by Vadim

a = Array.new(10) { rand(50) }
puts 'Start array: ' + a.to_s
a.each { |e| e == a.max ? break : counter += 1 }
puts 'Result: ' + counter.to_s
