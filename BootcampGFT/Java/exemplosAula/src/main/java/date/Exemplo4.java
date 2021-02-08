package date;

import java.util.Date;

public class Exemplo4 {

    public static void main(String[] args){
        Date dataNoPassado = new Date(1512737052956L);
        Date dataNoFuturo = new Date(1712737052956L);
        Date outraDataNoFuturo = new Date(1712737052956L);

        boolean isEquals = dataNoPassado.equals(dataNoFuturo);
        System.out.println(isEquals);

        int compareCase1 = dataNoPassado.compareTo(dataNoFuturo);
        int compareCase2 = dataNoFuturo.compareTo(dataNoPassado);
        int compareCase3 = dataNoFuturo.compareTo(outraDataNoFuturo);

        System.out.println(compareCase1);
        System.out.println(compareCase2);
        System.out.println(compareCase3);
    }
}
