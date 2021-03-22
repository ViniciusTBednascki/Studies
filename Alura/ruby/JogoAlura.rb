def boas_vindas
    puts "Bem vindo ao jogo de adivinhação"
    puts "qual seu nome jogador?"
    nome = gets.strip
    puts "\n\n\n"
    puts "Começaremos o jogo para você, #{nome}"
    nome
end

def sorteia_numero_secreto dificuldade
    maximo = 40 * dificuldade
    puts "Escolhendo um número secreto entre 0 e #{maximo}..."
    sorteado = rand(maximo)+1
end

def pede_numero chutes,tentativa,limite_de_tentativas
    puts "Tentativa #{tentativa.to_s} de #{limite_de_tentativas.to_s}"
    puts "chutes até agora: #{chutes.to_s}"
    puts"Entre com o numero:"
    chute = gets.strip
    puts "\n\n\n"
    puts "Será que você acertou? Você chutou #{chute}..."
    chute.to_i
end

def verifica_se_acertou chute,numero_secreto
    acertou = chute == numero_secreto
    if acertou
        puts "você acertou!"
        return true
    end
    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior"
    else 
        puts "O número secreto é menor"
    end
    puts "\n\n\n"
    false
end

def escolhe_dificuldade
    puts "Qual dificuldade você quer? ([1]fácil,[5]difícil)"
    dificuldade = gets.to_i
end


def nao_quer_jogar?
    puts "Quer jogar novamente? ([S]/[N])"
    quer_jogar= gets.strip
    nao_quer_jogar = quer_jogar.upcase == "N"
end

def jogar nome,dificuldade
    numero_secreto = sorteia_numero_secreto dificuldade 
    limite_de_tentativas = 5
    tentativa = 1
    chutes = []
    pontos_atuais = 1000

    for tentativa in 1..limite_de_tentativas
        chute = pede_numero chutes,tentativa,limite_de_tentativas
        chutes << chute
        if nome.upcase == "VINICIUS"
            puts "você acertou!"
            break
        end
        pontos_perdidos = (chute-numero_secreto).abs/2.0
        pontos_atuais -= pontos_perdidos
        acertou = verifica_se_acertou chute,numero_secreto
        break if acertou
    end 

    puts "Você ganhou #{pontos_atuais} pontos"
end

nome = boas_vindas
dificuldade = escolhe_dificuldade
    

loop do
    jogar nome,dificuldade
    break if nao_quer_jogar?
end