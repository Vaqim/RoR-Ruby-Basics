#Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
extremum = 0

puts "Start array: " + a.to_s
a.each.with_index{|e, idx| (e == a.min || e == a.max) ? (extremum = idx; break) : e }
puts "Result: " + extremum.to_s