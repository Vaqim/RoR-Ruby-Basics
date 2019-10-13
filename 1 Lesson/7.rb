#Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]

puts "Start array: " + a.to_s
puts "Result:      " + a.map!.with_index{|e, index| (e.odd? && !(index == 0 || index == a.index(a.last))) ? e += a.last : e}.to_s