package date;

import java.time.Instant;
import java.util.Date;

public class Exemplo5 {

    public static void main(String[] args){

        Date dataDeInicio = new Date(1512737052956L);
        System.out.println(dataDeInicio);

        Instant instant = dataDeInicio.toInstant();
        System.out.println(instant);
    }
}
