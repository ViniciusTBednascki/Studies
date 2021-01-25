def persistence(n)
    digits = n.digits
    cont = 0
    while digits.size > 1
        result = digits.reduce(:*)
        digits = result.digits
        cont += 1
    end
    cont
end

puts persistence(39)
puts persistence(4)
puts persistence(25)
puts persistence(999)