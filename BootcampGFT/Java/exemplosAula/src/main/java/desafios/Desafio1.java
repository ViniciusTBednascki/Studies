package desafios;


import java.io.IOException;
import java.util.Scanner;

public class Desafio1 {
    public static void main(String[] args) throws IOException {
        Scanner leitor = new Scanner(System.in);
        final int a = leitor.nextInt();
        for (int i =1; i<=a; i++) {
            if (i%2 == 0) {
                String resposta = String.valueOf(i);
                System.out.println(resposta);
            }
        }
    }
}
