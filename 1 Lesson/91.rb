#Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false.
#Done by Vadim

a = [rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50), rand(50)]
true_counter = 0
puts "Start array: " + a.to_s
k = gets.chomp.to_i
a.each{|e| true_counter += 1 if e < k }
true_counter != 0 ? (puts "true") : (puts "false") 