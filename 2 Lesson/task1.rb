array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
puts '– узнать количество элементов в массиве;'
puts array.size.to_s
puts
puts '– перевернуть массив;'
puts array.reverse.to_s
puts
puts '– найти наибольшее число;'
puts array.max.to_s
puts
puts '– найти наименьшее число;'
puts array.min.to_s
puts
puts '– отсортировать от меньшего к большему;'
puts array.sort{ |a, b| a <=> b }.to_s
puts
puts '– отсортировать от большего к меньшему;'
puts array.sort{ |a, b| b <=> a }.to_s
puts
puts '– удалить все нечетные числа;'
puts array.find_all{ |e| e.even? }.to_s
puts
puts '– оставить только те числа, которые без остатка делятся на 3;'
puts array.find_all{ |e| e % 3 == 0 }.to_s
puts
puts '– удалить из массива числа, которые повторяются;'
puts array.uniq.to_s
puts
puts '– разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого;'
puts array.map{ |e| e/10.0 }.to_s
puts
puts '– получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве;'
puts array.find_all{ |e| e <= 26  }.map{ |e| e = (64 + e).chr}.to_s
puts
puts '– поменять местами минимальный и максимальный элементы массива;'
puts array.map{|e| e == array.max ? e = array.min : (e == array.min ? e = array.max : e)}.to_s
puts
puts '– найти элементы, которые находятся перед минимальным числом в массиве;'
puts array.find_all.with_index{ |e, i| i < array.index(array.min) }.to_s
puts
puts '– необходимо найти три наименьших элемента;'
puts array.sort{ |a,b| a <=> b }.find_all.with_index{ |e,i| i < 3  }.to_s
puts
puts 'Original array: '
puts array.to_s
