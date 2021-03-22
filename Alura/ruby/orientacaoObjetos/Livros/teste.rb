class Teste
    attr_reader :nome, :ano_de_nascimento, :cidade
    def initialize(nome,ano_de_nascimento,cidade)
        @nome = nome
        @ano_de_nascimento = ano_de_nascimento
        @cidade = cidade
    end

    def informacoes
        "#{@nome},#{@ano_de_nascimento},#{@cidade}."
    end
end

class EstoqueTestes
    def initialize
        @testes = []
    end

    def <<(teste)
        @testes << teste if teste
        self
    end

    def exporta
        @testes.each do |teste|
            teste.informacoes
        end
    end

    def vaila(&campo)
        campo.call(@testes[0])
    end
end

teste1 = Teste.new("vinicius",1998,"curitiba")
teste2 = Teste.new("gabriel",2000,"curitiba")
estoque = EstoqueTestes.new
estoque << teste1 << teste2
puts estoque.vaila(&:ano_de_nascimento)

