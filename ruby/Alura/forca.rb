require_relative "ui"

def escolhe_palavra_secreta
    aviso_de_escolha_da_palavra
    texto = File.read "deuses.txt"
    todos_os_nomes = texto.split "\n"
    numero_escolhido = rand(todos_os_nomes.size)
    palavra_secreta = todos_os_nomes[numero_escolhido]
    aviso_de_palavra_escolhida palavra_secreta
    palavra_secreta.upcase
end

def confere_chute chutes,erros,mascara
    cabecalho erros,chutes,mascara
    loop do
        chute =pede_chute 
        if chutes.include? chute
            aviso_de_chute_igual
        else
            return chute
        end 
    end
end

def mascara chutes,palavra_secreta
    mascara = ""
    for letra in palavra_secreta.chars
        if chutes.include? letra
            mascara << letra
        else
            mascara << "_"
        end
    end
    mascara
end

def jogar nome
    palavra_secreta = escolhe_palavra_secreta
    chutes = []
    erros = 0
    pontos_ate_agora = 0

    while erros < 5
        mascara = mascara chutes,palavra_secreta
        chute = confere_chute chutes,erros,mascara
        chutes << chute
        letra = chute.size == 1
        if letra
            num_de_letras = palavra_secreta.count chute
            nao_tem = num_de_letras == 0
            if nao_tem
                letra_nao_esta_na_palavra chute
                erros += 1
            else
                letra_esta_na_palavra num_de_letras, chute
            end
        else
            acertou = chute == palavra_secreta
            if acertou
                mensagem_de_acerto
                pontos_ate_agora += 100
                break
            else
                mensagem_de_erro
                pontos_ate_agora -= 30
                erros += 1
            end
        end
    end
    pontucao_final pontos_ate_agora
    pontos_ate_agora
end

def salvar_pontuacao
    File.write "Pontos.txt", pontos_totais.to_s
end

def jogo_da_forca
    nome = boas_vindas
    pontos_totais = 0
    loop do
        pontos_ate_agora = jogar nome
        pontos_totais += pontos_ate_agora
        break if nao_quer_jogar     
    end 
end