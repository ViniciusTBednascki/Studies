def square_digits num
    digits = num.digits.reverse
    square_digits = []
    digits.each do |digit|
        square_digits << digit**2
    end
    return square_digits.join.to_i
end

puts square_digits 3212
puts square_digits 2112
puts square_digits 1111
puts square_digits 1234321
puts square_digits 0