using System;
using Exemplos.Arquivos.Exemplo1;
using Exemplos.Arquivos.Exemplo2;
using Exemplos.Arquivos.Exemplo3.Herança;
using Exemplos.Arquivos.Exemplo3.Metodos;

namespace Exemplos
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Testando a classe Pilha");
            var p = new Pilha();
            p.Empilha(1);
            p.Empilha(10);
            p.Empilha(100);
            Console.WriteLine(p.Desempilha());
            Console.WriteLine(p.Desempilha());
            Console.WriteLine(p.Desempilha());
            Console.WriteLine();

            Console.WriteLine("Testando a classe Instrucoes");
            var s = new Instrucoes();
            string[] teste = {"muitas","/","palavras"};
            s.Declaracoes();
            s.InstrucaoIf(teste);
            s.InstrucaoWhile(teste);
            s.InstrucaoDo();
            s.InstrucaoForeach(teste);
            s.InstrucaoContinue(teste);
            s.InstrucaoReturn();
            //s.InstrucaoUsing();
            Console.WriteLine();

            Console.WriteLine("Testando a classe Ponto e os Métodos Ref e Out");
            Ponto ponto = new Ponto(3,4);
            Console.WriteLine($"Coordenadas do ponto: {ponto.x},{ponto.y}");
            Ponto3D ponto3d = new Ponto3D(6,4,2);
            Console.WriteLine($"Coordenadas do ponto 3D: {ponto3d.x},{ponto3d.y},{ponto3d.z}");
            Ref.Inverter();
            Out.Dividir();
        }
        
    }
}
