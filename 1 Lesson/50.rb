#Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
counter = 0
puts "Start array: " + a.to_s
a.each{|e| e == a.max ? break : counter += 1 }
puts "Result: " + counter.to_s