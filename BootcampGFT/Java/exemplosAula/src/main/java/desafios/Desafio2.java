package desafios;


import java.io.IOException;
import java.util.Scanner;

public class Desafio2 {
    public static void main(String[] args) throws IOException {
        Scanner leitor = new Scanner(System.in);
        final int idadeDias = leitor.nextInt();
        int anos = idadeDias / 365;
        int diasRestantes = idadeDias - (anos * 365);
        int meses = diasRestantes / 30;
        diasRestantes -= meses * 30;
        int dias = diasRestantes;
        System.out.println(anos + " ano(s)");
        System.out.println(meses + " mes(es)");
        System.out.println(dias + " dia(s)");
    }
}
