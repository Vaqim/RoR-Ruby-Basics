#Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.
#Done by Vadim
a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts "Start array: "  + a.to_s
puts "Result: " + (a.select{|e| e.odd?} + a.select{|e| e.even?}).to_s