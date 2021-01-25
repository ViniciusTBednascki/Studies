def calculoZ()
    puts "X:"
    x = gets.chomp.to_i
    puts "Y:"
    y = gets.chomp.to_i
    z = (x*y)+5
    if z <= 0
        resposta = "A"
    elsif z <= 100
        resposta = "B"
    else 
        resposta = "C"
    end
    puts z
    puts resposta
end

calculoZ()