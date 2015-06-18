#include<stdio.h>
#include<math.h>


int main(){
    int i;
    int final;
    double xmedio;
    double xparcial;
    double soma = 0;
    double op;
    

    printf("Digite o número de termos: \n");
    scanf("%d",&final);
    printf("Digite o x médio: \n");
    scanf("%lf",&xmedio);
    
    for (i = 1; i <= final; i++) {
        printf("Insira os valores: \n");
        scanf("%lf",&xparcial);
        
        /*faz a subtração do xmedio - x e faz o quadrado do valor*/
        op = xmedio - xparcial;
        soma = soma + pow(op,2);
    }
    /*divide a soma pelo n - 1*/
    soma = soma/(final - 1);
    
    /*faz a raiz e plota o valor final*/
    soma = sqrt(soma);

    printf("Esse é o valor final: %f\n", soma);

    return 0;
}

