import java.util.Arrays;
import java.util.stream.Stream;
public class PhoneNumber{
    public static String createPhoneNumber(int[] numbers) {
        /* ---código mais otimizado---
        public static String createPhoneNumber(int[] numbers) {
        return String.format("(%d%d%d) %d%d%d-%d%d%d%d",numbers[0],numbers[1],numbers[2],numbers[3],numbers[4],numbers[5],numbers[6],numbers[7],numbers[8],numbers[9]);
        }
        */
        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < numbers.length; i++) {
            switch(i){
                case 0:
                    stringBuilder.append("(");
                    stringBuilder.append(Integer.valueOf(numbers[i]));
                    break;
                case 3:
                    stringBuilder.append(") ");
                    stringBuilder.append(Integer.valueOf(numbers[i]));
                    break;
                case 6:
                    stringBuilder.append("-");
                    stringBuilder.append(Integer.valueOf(numbers[i]));
                    break;
                default:
                    stringBuilder.append(Integer.valueOf(numbers[i]));
            }
        }

        final String result = stringBuilder.toString(); 
        return result;
      }
}