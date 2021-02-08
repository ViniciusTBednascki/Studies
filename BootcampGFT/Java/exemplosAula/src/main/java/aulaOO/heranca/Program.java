package aulaOO.heranca;

public class Program {

    public static void main(String[] args){
        Gerente gerente = new Gerente();
        Supervisor supervisor = new Supervisor();
        Atendente atendente = new Atendente();

        System.out.println(gerente.calculaImposto(3000));
        System.out.println(supervisor.calculaImposto(2000));
        System.out.println(atendente.calculaImposto(1000));
    }
}
