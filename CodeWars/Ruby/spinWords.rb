def spinWords(string)
    words = string.split(' ')
    for i in 0..(words.size-1)
        if words[i].size > 4
            words[i] = words[i].reverse
        end
    end
    newString = words.join(" ")
end
