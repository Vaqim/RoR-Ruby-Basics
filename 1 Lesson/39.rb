#Дан целочисленный массив. Найти количество минимальных элементов.
#Done by Vadim


a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
counter = 0
puts "Start array: " + a.to_s
a.each{|e| a.min == e ? counter += 1 : e}
puts "Result: " + counter.to_s
