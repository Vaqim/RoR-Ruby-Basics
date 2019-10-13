#Дан целочисленный массив. Найти максимальный четный элемент.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
result = 0
puts "Start array: " + a.to_s
a.index(a.map{|e| a.max.even? ? result = a.max : a.delete(a.max)})
puts "Result: " + result.to_s