import java.util.Scanner;

public class FizzBuzzPlay {

    public static void main(String[] args){
        boolean gameEnded = false;
        Scanner scanner = new Scanner(System.in);

        System.out.println("Lets play FizzBuzz, do you know how to play?(Y/N)");
        var answer = scanner.next().toUpperCase();
        System.out.println();

        if(answer.equals("N")){
            System.out.println();
            System.out.println("The game works like this: Someone starts saying the number 1 and the other has to say the next number,");
            System.out.println("We will then keep saying the next numbers one after the other, but if the number is divisible");
            System.out.println("by 3 instead of saying it we have to say 'Fizz', if the number is divisible by 5 we have to say 'Buzz'");
            System.out.println("and if it is divisible by both we have to say 'FizzBuzz', the first one to miss loses");
            System.out.println("Ready to play?(Y/N)");
            answer = scanner.next().toUpperCase();
        }

        if(answer.equals("Y")){
            System.out.println();
            System.out.println("Well, I start");
            int i = 1;

            while(!gameEnded){
                if(i % 3 ==0){
                    if(i % 5 == 0){
                        System.out.println("FizzBuzz");
                    }else{
                        System.out.println("Fizz");
                    }
                }else{
                    if(i % 5 == 0){
                        System.out.println("Buzz");
                    }else{
                        System.out.println(i);
                    }
                }

                i++;

                answer = scanner.next().toUpperCase();
                
                if(i % 3 == 0){
                    if(i % 5 == 0){
                        if(!answer.equals("FIZZBUZZ")){
                            System.out.println("I won");
                            gameEnded = true;
                        }else{
                            i++;
                        }
                    }else{
                        if(!answer.equals("FIZZ")){
                            System.out.println("I won");
                            gameEnded = true;
                        }else{
                            i++;
                        }
                    }
                }else{
                    if(i % 5 == 0){
                        if(!answer.equals("BUZZ")){
                            System.out.println("I won");
                            gameEnded = true;
                        }else{
                            i++;
                        }
                    }else{
                        if(Integer.parseInt(answer) != i){
                            System.out.println("I won");
                            gameEnded = true;
                        }else{
                            i++;
                        }
                    }
                }
            }

            System.out.println();
            System.out.println("Thanks for playing, until next time");
            scanner.close();
        }else{
            System.out.println("OK, we can play another time");
            scanner.close();
        }
    }
    
}
