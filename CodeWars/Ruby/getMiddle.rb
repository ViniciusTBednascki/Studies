def get_middle(s)
    middle = s.size/2
    if s.size%2 == 0
        s[middle-1..middle]
    else
        s[middle]
    end
end

puts get_middle("ersiteotisre")
puts get_middle("atita")