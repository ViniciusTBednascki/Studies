#include <stdio.h>
#include <time.h>

int confereAnoBisexto(int ano){
    if(ano%100 == 0){
        if(ano%400 == 0){
            return 1;
        }else{
            return 0;
        };
    }else{
        if(ano%4 == 0){
            return 1;
        }else{
            return 0;
        };
    };
};

int diasNoMes(int mes, int ano){
    int ehAnoBisexto = confereAnoBisexto(ano);
    int dias = 0;

    if(mes == 4 || mes == 6 || mes == 9 || mes == 11){
        dias = 30;
    }else{
        if(mes != 2){
            dias = 31;
        }else if(ehAnoBisexto){
            dias = 29;
        }else{
            dias = 28;
        };
    };

    return dias;
};

int calculaDiasEmUmAnoIncompleto(int dia, int mes, int ano, char *inicioOuFinal){
    int diasTotais = 0;

    if(inicioOuFinal == "I"){
        diasTotais = (diasNoMes(mes, ano) - dia) + 1;
        for(int count = mes + 1; count<=12; ++count){
            diasTotais += diasNoMes(count, ano);
        };
    }else if(inicioOuFinal == "F"){
        diasTotais = dia - 1;
        for(int count = mes - 1; count >= 1; --count){
            diasTotais += diasNoMes(count, ano);
        };
    };

    return diasTotais;
};

int calculaDiasEntreAnosCompletos(int anoInicial, int anoFinal){
    int diasTotais = 0;
    int ehAnoBisexto;

    for(int count = anoInicial; count <= anoFinal; ++count){
        ehAnoBisexto = confereAnoBisexto(count);
        if(ehAnoBisexto){
            diasTotais += 366;
        }else{
            diasTotais += 365;
        }
    };

    return diasTotais;
};

int main (){
    int diaInicial, mesInicial, anoInicial, diaAtual, mesAtual, anoAtual;
    unsigned idadeEmDias = 0;

    printf("Digite a data inicial no formato DD/MM/AAAA\n");
    scanf("%d/%d/%d", &diaInicial, &mesInicial, &anoInicial);

    time_t t = time(NULL);
    struct tm tm = *localtime(&t);
    anoAtual = tm.tm_year + 1900;
    mesAtual = tm.tm_mon + 1;
    diaAtual = tm.tm_mday;

    if(anoInicial != anoAtual){
        idadeEmDias += calculaDiasEmUmAnoIncompleto(diaInicial, mesInicial, anoInicial, "I");
        idadeEmDias += calculaDiasEmUmAnoIncompleto(diaAtual, mesAtual, anoAtual, "F");
        idadeEmDias += calculaDiasEntreAnosCompletos(anoInicial+1,anoAtual-1);
    }else{
        idadeEmDias += calculaDiasEmUmAnoIncompleto(diaInicial, mesInicial, anoInicial, "I");
        idadeEmDias -= calculaDiasEmUmAnoIncompleto(diaAtual, mesAtual, anoAtual, "I");
    }
    printf("%d\n", idadeEmDias);

    return 0;
};