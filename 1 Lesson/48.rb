#Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.
#Done by Vadim

ary = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
a, b = 2, 7; #interval

puts "Start array: " + ary.to_s
puts ary[a..b].max.to_s
