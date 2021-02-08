package array;

public class Array {

    public static void main(String[] args){
        int[] array = {1,2,3,4,5,6,7};
        for(int i=0; i<array.length; i++){
            System.out.println(array[i]);
        }
        System.out.println();

        int[][] arrayBidimensional = {{1,5,8},{5,9,3},{4,9,3}};
        for(int i=0; i<arrayBidimensional.length; i++){
            for(int j=0; j<arrayBidimensional[i].length;j++){
                System.out.print(arrayBidimensional[i][j]+" ");
            }
            System.out.println();
        }
    }
}
