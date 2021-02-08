package desafios;


import java.io.IOException;
import java.util.Scanner;

public class Desafio3 {
    public static void main(String[] args) throws IOException {
        Scanner leitor = new Scanner(System.in);
        final int nota = leitor.nextInt();
        if(nota == 0){
            System.out.println("E");
        }else if(nota<36){
            System.out.println("D");
        }else if(nota<61){
            System.out.println("C");
        }else if(nota<86){
            System.out.println("B");
        }else{
            System.out.println("A");
        }
    }
}
