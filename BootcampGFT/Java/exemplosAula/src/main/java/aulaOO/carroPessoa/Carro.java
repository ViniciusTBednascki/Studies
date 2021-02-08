package aulaOO.carroPessoa;

import java.util.ArrayList;
import java.util.List;

public class Carro {

    private int capacidade;
    private String marca;
    private String modelo;
    private int ano;
    private List<Pessoa> pessoasDentro = new ArrayList<>();
    private int numPessoasDentro = 0;

    public Carro(String marca,String modelo,int ano, int capacidade){
        this.capacidade = capacidade;
    }

    public int getCapacidade(){
        return capacidade;
    }

    public void entrar(Pessoa pessoa){pessoasDentro.add(pessoa);};

    public void sair(Pessoa pessoa){pessoasDentro.remove(pessoa);};

    public List<String> getNomePessoasDentro(){
        if(pessoasDentro.size() > 0){
            List<String> nomePessoas = new ArrayList<>();
            for (Pessoa pessoa : pessoasDentro) {
                nomePessoas.add(pessoa.getNome());
            }
            return nomePessoas;
        }else {
            return null;
        }
    }
}
