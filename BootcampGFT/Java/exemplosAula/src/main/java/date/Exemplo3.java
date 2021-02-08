package date;

import java.util.Date;

public class Exemplo3 {

    public static void main(String[] args){
        Date dataNoPassado = new Date(1512737052956L);
        Date dataNoFuturo = new Date(1712737052956L);

        boolean isAfter = dataNoPassado.after(dataNoFuturo);
        System.out.println(isAfter);

        boolean isBefore = dataNoPassado.before(dataNoFuturo);
        System.out.println(isBefore);
    }
}
