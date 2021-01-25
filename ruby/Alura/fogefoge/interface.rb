def da_boas_vindas
    puts "Bem vindo ao Foge-Foge"
    puts "Qual o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def escolhe_mapa
    puts "Em qual mapa você gostaria de jogar?"
    puts "\nMapa 1:"
    puts "\n"
    desenha(le_mapa(1))
    puts "\nMapa 2:"
    puts "\n"
    desenha(le_mapa(2))
    puts "\n"
    puts "Digite o número:"
    num_mapa = gets.strip
end

def pede_movimento
    puts "Para onde deseja ir?"
    movimento = gets.strip.upcase
end


 
