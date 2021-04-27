#include <stdio.h>

unsigned  concatenar(unsigned  primeiroNumero, unsigned  segundoNumero) {
    unsigned  pow = 10;
    while(segundoNumero >= pow){
        pow *= 10;
    };
    return primeiroNumero * pow + segundoNumero;        
}

unsigned  concatenarNvezes(unsigned  numero, unsigned  vezes){
    unsigned contador = 1;
    unsigned  resultado = numero;
    while(contador < vezes){
        resultado = concatenar(resultado , numero);
        contador += 1;
    };
    return resultado;
};

unsigned calcularSuperNumero(unsigned numero){
    unsigned valor, soma = 0, digitos = 0;
    while(numero > 0){    
        valor = numero%10;    
        numero = numero/10;
        soma += valor;    
    };

    valor = soma;
    while (valor > 0) {
        valor = valor / 10;     
        digitos += 1;
    }

    if(digitos > 1){
        soma = calcularSuperNumero(soma);
    };

    return soma;
};

int main(){
    unsigned  n,k;
    unsigned  numero, superNumero;

    printf("Digite n e k separados por espaco\n");
    printf("ex: 123 3\n");
    scanf("%u %u", &n, &k);

    numero = concatenarNvezes(n, k);
    superNumero = calcularSuperNumero(numero);
    printf("super numero: %u", superNumero);

    return 0;
};