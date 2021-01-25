def encode(word)
    letters = word.upcase.chars.uniq
    repLetters = []
    code = ""
    letters.each do |letter|
        repeatedLetter = word.upcase.chars.count { |l| l == letter } > 1
        if repeatedLetter
            repLetters << letter
        end
    end
    word.upcase.chars.each do |letter|
        if repLetters.include? letter
            code << ")"
        else
            code << "("
        end
    end
    return code
end

puts encode("din")
puts encode("recEde")
puts encode("Success")
puts encode("(( @")
