using System;

namespace csharp
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] kata = Kata.ArrayDiff(new int[] {1, 2, 2, 2, 3}, new int[] {2});
            int[] otherKata = Kata.ArrayDiff(new int[] {1, 2, 2}, new int[] {});
            Console.WriteLine("[{0}]", string.Join(", ", kata));
            Console.WriteLine("[{0}]", string.Join(", ", otherKata));
        }
    }
}
