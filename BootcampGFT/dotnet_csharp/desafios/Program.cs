using System;

namespace desafios
{
    class Program
    {
        static void Main(string[] args)
        {   
            //Desenvolvendo algoritmos com C# - Desafio 1
                /*
                var entrada = Console.ReadLine().Split(" ");
                int velocidade = int.Parse(entrada[0]);
                int tempo = int.Parse(entrada[1]);

                double resultado = (double)velocidade * tempo;

                resultado = resultado / 12;
                string resultadoString = resultado.ToString("N3");

                Console.WriteLine(resultadoString);
                */

            //Desenvolvendo algoritmos com C# - Desafio 2
                /*
                int numTotalFigurinhas = Convert.ToInt16(Console.ReadLine());
                int numFigurinhasCompradas = Convert.ToInt16(Console.ReadLine());
                int[] figurinhasCompradas = new int[numFigurinhasCompradas];

                for(int i = 0; i < numFigurinhasCompradas; i++)
                {
                    figurinhasCompradas[i] = Convert.ToInt16(Console.ReadLine());
                }

                int[] figurinhasDiferentes = new int[numFigurinhasCompradas];
                int numFigurinhasDiferentes = 0;

                foreach(var figurinha in figurinhasCompradas)
                {
                    var index = Array.FindIndex(figurinhasDiferentes, x => x == figurinha);
                    if(index < 0)
                    {
                        figurinhasDiferentes[numFigurinhasDiferentes] = figurinha;
                        numFigurinhasDiferentes++;
                    }
                }

                string resultado = (numTotalFigurinhas - numFigurinhasDiferentes).ToString();
                Console.WriteLine(resultado);
                */

            //Desenvolvendo algoritmos com C# - Desafio 3
                String definicao1; 
                String definicao2;
                String definicao3;

                definicao1 = Console.ReadLine();
                definicao2 = Console.ReadLine();
                definicao3 = Console.ReadLine();

                if ((definicao1 == "vertebrado") && (definicao2 == "ave")  && (definicao3 == "carnivoro")) {
                    Console.WriteLine("aguia");
                }

                if ((definicao1 == "vertebrado") && (definicao2 == "ave")  && (definicao3 == "onivoro")) {
                    Console.WriteLine("pomba");
                }

                if ((definicao1 == "vertebrado") && (definicao2 == "mamifero")  && (definicao3 == "onivoro")) {
                    Console.WriteLine("homem");
                }

                if ((definicao1 == "vertebrado") && (definicao2 == "mamifero")  && (definicao3 == "herbivoro")) {
                    Console.WriteLine("vaca");
                }

                if ((definicao1 == "invertebrado") && (definicao2 == "inseto")  && (definicao3 == "hematofago")) {
                    Console.WriteLine("pulga");
                }

                if ((definicao1 == "invertebrado") && (definicao2 == "inseto")  && (definicao3 == "herbivoro")) {
                    Console.WriteLine("lagarta");
                }
                
                if ((definicao1 == "invertebrado") && (definicao2 == "anelideo")  && (definicao3 == "hematofago")) {
                    Console.WriteLine("sanguessuga");
                }

                if ((definicao1 == "invertebrado") && (definicao2 == "anelideo") && (definicao3 == "onivoro")) {
                    Console.WriteLine("minhoca");
                }
        }
    }
}
