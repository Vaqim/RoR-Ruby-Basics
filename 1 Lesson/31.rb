#Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность.
#Done by Vadim

a = [rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25)]
indexes = []

puts "Start array:  " + a.to_s
puts "Sorted array: " + a.sort{|a, b| b <=> a}.each{|e| indexes.push(a.index(e))}.to_s
puts "Result:       " + indexes.to_s