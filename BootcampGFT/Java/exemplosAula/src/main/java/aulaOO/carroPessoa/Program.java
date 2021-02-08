package aulaOO.carroPessoa;

public class Program {

    public static void main(String[] args){

        Pessoa pessoa = new Pessoa("Vinicius");
        Pessoa outraPessoa = new Pessoa("Maria");
        System.out.println(pessoa.getNome());
        System.out.println(outraPessoa.getNome());

        Carro carro = new Carro("Fiat","Uno",2010,5);
        System.out.println(carro.getCapacidade());
        System.out.println(carro.getNomePessoasDentro());
        carro.entrar(pessoa);
        System.out.println(carro.getNomePessoasDentro());
        carro.entrar(outraPessoa);
        System.out.println(carro.getNomePessoasDentro());
        carro.sair(pessoa);
        System.out.println(carro.getNomePessoasDentro());
    }
}
