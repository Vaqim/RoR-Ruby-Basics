#Дан целочисленный массив. Найти максимальный нечетный элемент.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
result = 0
puts "Start array: " + a.to_s
a.index(a.map{|e| a.max.odd? ? result = a.max : a.delete(a.max)})
puts "Result: " + result.to_s