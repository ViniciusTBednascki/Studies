using System;
using System.Collections.Generic;
//using System.Linq;

namespace csharp
{
    public class Kata
    {
        public static int[] ArrayDiff(int[] a, int[] b)
        {
            // melhor prática:
            //return a.Where(n => !b.Contains(n)).ToArray();

            List<int> numbersAccepted = new List<int>();
            for(int i = 0; i < a.Length; i++){
                Boolean exists = Array.Exists(b,number => number == a[i]);
                if(!exists){
                    numbersAccepted.Add(a[i]);
                }
            }
            int[] result = numbersAccepted.ToArray();
            return result;
        }
    }
}