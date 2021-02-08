package localDateTime;

import java.time.LocalDateTime;
import java.time.LocalTime;

public class Exemplo3 {

    public static void main(String[] args){

        LocalDateTime agora = LocalDateTime.now();
        LocalDateTime novaData = agora.plusYears(4).plusMonths(6).plusHours(13);

        System.out.println(agora);
        System.out.println(novaData);
    }
}
