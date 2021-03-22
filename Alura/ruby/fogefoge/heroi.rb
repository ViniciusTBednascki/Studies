class Heroi
    attr_accessor :linha,:coluna    

    def calcula_nova_posicao(direcao)
        heroi = self.dup
        movimentos = {
            "W" => [-1,0],
            "A" => [0,-1],
            "S" => [+1,0],
            "D" => [0,+1]
        }
        movimento = movimentos[direcao]
        heroi.linha += movimento[0]
        heroi.coluna += movimento[1]
        heroi
    end

    def direita
        calcula_nova_posicao("D")
    end

    def cima
        calcula_nova_posicao("W")
    end

    def esquerda
        calcula_nova_posicao("A")
    end

    def baixo
        calcula_nova_posicao("S")
    end

    def to_array
        [linha,coluna]
    end

    def remove_do(mapa)
        mapa[self.linha][self.coluna] = " "
    end

    def coloca_no(mapa)
        mapa[self.linha][self.coluna] = "H"
    end
end