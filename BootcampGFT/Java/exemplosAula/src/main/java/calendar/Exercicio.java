package calendar;

import java.util.Calendar;

public class Exercicio {

    public static void main(String[] args) {

        Calendar agora = Calendar.getInstance();
        agora.add(Calendar.DATE, 10);
        agora.add(Calendar.DATE, 10);
        int dayOfWeek = agora.get(Calendar.DAY_OF_WEEK);
        boolean isSaturday = dayOfWeek == 7;
        boolean isSunday =  dayOfWeek == 1;
        if(isSaturday){
            agora.add(Calendar.DATE, 2);
        }else if(isSunday){
            agora.add(Calendar.DATE, 1);
        }
        System.out.printf("%tD\n", agora);

    }
}
