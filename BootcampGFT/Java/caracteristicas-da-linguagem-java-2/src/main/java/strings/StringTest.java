package strings;

public class StringTest {

    public static void main(String[] args) {
        System.out.println("A B C D E F G".toCharArray());
        System.out.println("Aula de java".split(" ")[0]);
        System.out.println("Aula".concat(" de java"));
        System.out.println("1234 asda qw".replaceAll("[0-9]","#"));

    }
}
