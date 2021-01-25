def max_sequence(arr)
    maxSum = 0
    maxSeq = [0]
    for primeiro in 0..(arr.size - 1)
        for ultimo in  primeiro..(arr.size - 1)
            sum = 0
            seq = []
            for i in primeiro..ultimo
                sum += arr[i]
                seq << arr[i]
            end
            if sum > maxSum
                maxSum = sum
                maxSeq = seq
            end
        end
    end
    [maxSum, maxSeq.join(",")]
end


puts max_sequence([])[1]
puts max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4])[1]
puts max_sequence([11])[1]
puts max_sequence([-32])[1]
puts max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])[1]