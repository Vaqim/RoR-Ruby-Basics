#Дан целочисленный массив. Заменить все положительные элементы на значение максимального.
#Done by Vadim

a = [rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25)]

puts "Start array: " + a.to_s
puts "Result:      " + a.map{ |e| e > 0 ? a.max : e}.to_s