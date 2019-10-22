# frozen_string_literal: true

# Дан целочисленный массив. Упорядочить его по возрастанию.
# Done by Vadim

a = [rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25), rand(-25..25)]

puts 'Start array: ' + a.to_s
puts 'Result:      ' + a.sort { |a, b| a <=> b }.to_s
