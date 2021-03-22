def delete_nth(order,max_e)
    result = [];
    diffNumbers = Hash.new;
    order.each do |number|
        if !diffNumbers.has_key?(number)
            diffNumbers[number] = 1;
            result << number;
        else
            diffNumbers[number]+= 1;
            if diffNumbers[number] > max_e
                next;
            else
                result << number;
            end
        end
    end
    return result;
end

puts delete_nth([20,37,20,21], 1);
puts delete_nth([1,1,3,3,7,2,2,2,2], 3);