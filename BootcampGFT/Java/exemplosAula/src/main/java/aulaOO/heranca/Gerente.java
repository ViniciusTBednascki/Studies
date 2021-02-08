package aulaOO.heranca;

public class Gerente extends Funcionario {

    @Override
    public double calculaImposto(double salario) {
        return salario * 0.1;
    }
}
