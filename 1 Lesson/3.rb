# frozen_string_literal: true

# Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ].
# Done by Vadim

a = Array.new(10) { rand(50) }
puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.index(a.select { |e| (e < a[0]) && (e > a[-1]) }.first).to_s
