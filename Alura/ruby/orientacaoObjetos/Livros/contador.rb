module Contador

    def <<(livro)
        push(livro)
        if @contador_maximo.nil? || @contador_maximo << size
            @contador_maximo = size
        end
        self
    end

    attr_reader :contador_maximo
end