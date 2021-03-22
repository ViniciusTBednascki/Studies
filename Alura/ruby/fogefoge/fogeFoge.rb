require_relative 'interface'
require_relative 'Heroi'

def inicia_fogefoge
    nome = da_boas_vindas
    num_mapa = escolhe_mapa
    joga(nome,num_mapa)
end

def jogador_perdeu?(mapa)
    perdeu = !encontrar_jogador(mapa)
end

def game_over
    puts "\n\n\n\n\n"
    puts "game over"
end

def joga(nome,num_mapa)
    mapa = le_mapa(num_mapa)
    while true
        puts "\n"
        desenha(mapa)
        direcao = pede_movimento
        heroi = encontrar_jogador(mapa)
        move_heroi(mapa,heroi,direcao)
        mapa = move_fantasmas(mapa)
        if jogador_perdeu?(mapa)
            game_over
            break
        end
    end
end

def le_mapa(numero)
    arquivo = "mapa#{numero}.txt"
    texto = File.read(arquivo)
    mapa = texto.split("\n")
end

def desenha(mapa)
    puts mapa
end

def encontrar_jogador(mapa)
    heroi = "H"
    mapa.each_with_index do |linha_atual,linha|
        coluna_do_heroi = linha_atual.index heroi
        if coluna_do_heroi
            jogador = Heroi.new
            jogador.linha = linha
            jogador.coluna = coluna_do_heroi
            return jogador
        end    
    end
    nil
end

def fora_do(mapa,posicao)
    linhas = mapa.size
    colunas = mapa[0].size

    saiu_do_mapa_vertical = posicao[1] < 0 || posicao[1] >= colunas
    saiu_do_mapa_horizontal = posicao[0] < 0 || posicao[0] >= linhas

    if saiu_do_mapa_horizontal || saiu_do_mapa_vertical
        return true
    end
    false
end

def executa_remocao(mapa,posicao,quantidade)
    if fora_do(mapa,posicao.to_arra)
        return
    end

    if mapa[posicao.linha][posicao.coluna] == "X"
        return
    end
    
    posicao.remove_do(mapa)
    remove(mapa,posicao,quantidade-1)
end

def remove(mapa,posicao,quantidade)
    if quantidade == 0
        return
    end
    executa_remocao(mapa,posicao.direita,quantidade)
    executa_remocao(mapa,posicao.cima,quantidade)
    executa_remocao(mapa,posicao.esquerda,quantidade)
    executa_remocao(mapa,posicao.baixo,quantidade)
end

def move_heroi(mapa,heroi,direcao)
    nova_posicao = heroi.calcula_nova_posicao(direcao)
    posicao_valida = posicao_valida?(mapa,nova_posicao.to_array)

    if posicao_valida
        heroi.remove_do(mapa)
        if mapa[nova_posicao.linha][nova_posicao.coluna] == "*"
            remove(mapa,nova_posicao,4)
        end
        nova_posicao.coloca_no(mapa)
    end
end

def posicao_valida?(mapa,posicao)
    linhas = mapa.size
    colunas = mapa[0].size

    saiu_do_mapa = posicao[1] < 0 || posicao[1] >= colunas
    saiu_do_mapa_pelas_laterais = posicao[0] < 0 || posicao[0] >= linhas
    if saiu_do_mapa || saiu_do_mapa_pelas_laterais
        return false
    end
    
    valor_local = mapa[posicao[0]][posicao[1]]
    if valor_local == "X" || valor_local == "F"
        return false
    end

    true
end

def move_fantasmas(mapa)
    fantasma = "F"
    novo_mapa = copia_mapa(mapa)
    mapa.each_with_index do |linha_atual,linha|
        linha_atual.chars.each_with_index do |caracter_atual,coluna|
            eh_fantasma = caracter_atual == fantasma
            if eh_fantasma
                move_fantasma(mapa,novo_mapa,linha,coluna)
            end
        end
    end
    novo_mapa
end

def move_fantasma(mapa,novo_mapa,linha,coluna)
    posicoes_possiveis = posicoes_possiveis_a_partir_de(mapa,novo_mapa,[linha,coluna])
    if posicoes_possiveis.empty?
        return
    end
    aleatorio = rand posicoes_possiveis.size
    nova_posicao = posicoes_possiveis[aleatorio]
    mapa[linha][coluna] = " "
    novo_mapa[nova_posicao[0]][nova_posicao[1]] = "F"
end

def soma(vetor1,vetor2)
    [vetor1[0]+vetor2[0],vetor1[1]+vetor2[1]]
end

def posicoes_possiveis_a_partir_de(mapa,novo_mapa,posicao)
    posicoes = []
    movimentos = [[-1,0],[0,+1],[+1,0],[0,-1]]
    movimentos.each do |movimento|
        nova_posicao = soma(posicao,movimento)
        if posicao_valida?(mapa,nova_posicao) && posicao_valida?(novo_mapa,nova_posicao)    
            posicoes << nova_posicao
        end
    end
    posicoes
end

def copia_mapa(mapa)
    novo_mapa = mapa.join("\n").tr("F"," ").split("\n")
end