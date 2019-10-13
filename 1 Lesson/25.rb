#Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.
#Done by Vadim

a = [rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25)]

puts "Start array: " + a.to_s
puts "Result:      " + a.each.with_index{|e, idx| e > 0 ? a.insert(idx, a.first) : e}.to_s