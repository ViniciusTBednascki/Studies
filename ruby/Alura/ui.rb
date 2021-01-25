def boas_vindas
    puts "Bem vindo ao jogo da forca"
    puts "Qual o seu nome?"
    nome = gets.strip
    puts "Vamos começar o jogo #{nome}" 
    puts "\n\n\n"  
    nome 
end

def aviso_de_escolha_da_palavra
    puts "Escolhendo palavra secreta..."
end

def aviso_de_palavra_escolhida palavra_secreta
    puts "A palavra secreta tem #{palavra_secreta.size} letras"
end

def cabecalho erros,chutes,mascara
    puts "\n\n\n"
    puts "Palavra secreta: #{mascara}"
    puts "erros até agora: #{erros}"
    puts "chutes até agora: #{chutes}"    
end

def pede_chute 
    puts "digite uma letra ou palavra"
    chute = gets.strip
    puts "\n\n\n"
    chute.upcase
end

def nao_quer_jogar
    puts "Quer jogar novamente?(S/N)"
    quer_jogar = gets.strip
    nao_quer_jogar = quer_jogar.upcase == "N"
end

def aviso_de_chute_igual    
    puts "Você já chutou essa letra ou palavra"
    puts "Tente outra"
end

def letra_nao_esta_na_palavra chute
    puts "A palavra secreta não tem a letra #{chute}"
end

def letra_esta_na_palavra num_de_letras, chute
    puts "A palavra secreta tem #{num_de_letras} #{chute}"
end

def mensagem_de_acerto
    puts "parabéns você acertou"
end

def mensagem_de_erro
    puts "Que pena você errou"
end

def pontucao_final pontos_ate_agora
    puts "Você ganhou #{pontos_ate_agora} pontos"
end