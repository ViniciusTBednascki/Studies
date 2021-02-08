package localDateTime;

import java.time.LocalDate;

public class Exemplo1 {

    public static void main(String[] args){

        LocalDate hoje = LocalDate.now();
        LocalDate ontem = hoje.minusDays(1);

        System.out.println(hoje);
        System.out.println(ontem);
    }
}
