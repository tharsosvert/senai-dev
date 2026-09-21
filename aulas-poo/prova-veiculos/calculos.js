export function tratarDiv(dividendo,divisor){
    let resultDiv = 0;

    if (divisor!=0){
        resultDiv = dividendo/divisor;
    } else {
        console.log("Atenção: Não é possível executar pois o divisor é = zero. ");
    }

    return resultDiv;
}


export function calcularLitros(distanciaKm, autonomiaKmL){
    resultLitros = distanciaKm * autonomiaKmL;
    return resultLitros;
} //Retorna os litros de combustível necessários.

export function calcularCusto(litros, precoLitro){
    resultCusto = litros * precoLitro;
    return resultCusto;
} //Retorna o valor financeiro da viagem em reais.

export function custoPorKm(custo, distanciaKm){
    return tratarDiv(custo,distanciaKm);
} //Retorna o custo por quilômetro percorrido.

export function formatarReais(valor){
    return `R$ ${valor.toFixed(2)}`
} //Retorna a string formatada em reais (ex.: R$ 150,00).