class Intervalo
    def initialize(minutos)
        @minutos = minutos
    end

    def horas
        @minutos / 60
    end

    def minutos
        @minutos % 60
    end

    def to_s
        return "#{horas}:#{minutos}"
    end
end