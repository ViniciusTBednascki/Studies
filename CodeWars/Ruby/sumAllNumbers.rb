def get_sum(a,b)
    way = b <=> a
    sum = a
    if way != 0  
        number = a
        while number != b
            number += way
            sum += number
        end
    end
    sum
end


puts get_sum(0,1)
puts get_sum(0,-1)
puts get_sum(1,2)
puts get_sum(5,-1)