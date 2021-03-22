import javax.naming.spi.DirStateFactory.Result;

public class program {
    public static void main(String[] args){
        int [] teste = new int[] {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
        String result = PhoneNumber.createPhoneNumber(teste);
        System.out.println(result);
    }
}
