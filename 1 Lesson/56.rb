#Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального .
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
counter = 0
puts "Start array: " + a.to_s
a.reverse.each{|e| e == a.min ? break : counter += 1 }
puts "Result: " + counter.to_s