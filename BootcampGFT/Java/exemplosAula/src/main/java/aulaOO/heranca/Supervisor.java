package aulaOO.heranca;

public class Supervisor extends Funcionario {

    @Override
    public double calculaImposto(double salario) {
        return salario * 0.05;
    }
}
