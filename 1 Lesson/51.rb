# frozen_string_literal: true

# Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.
# Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
counter = 0
puts 'Start array: ' + a.to_s
a.each { |e| e == a.max ? break : counter += 1 }
puts 'Result: ' + (a.size - (counter + 1)).to_s
