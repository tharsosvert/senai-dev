export function areaRetangulo(base, altura){
    // ● areaRetangulo(base, altura): Retorna a área (base*altura).
    return `${base*altura}`
}

export function areaTriangulo(base, altura){
    // ● areaTriangulo(base, altura): Retorna a área ((base*altura)/2).
    return `${(base*altura)/2}`
}

export function hipotenusa(cateto1, cateto2){
    // ● hipotenusa(cateto1, cateto2): Retorna o valor da hipotenusa (raizQ(cateto1²+cateto2²)).
    return `${Math.sqrt(cateto1^2+cateto2^2)}`
}

export function formatarUnidade(valor, unidade){
    // ● formatarUnidade(valor, unidade): Retorna a string formatada com a unidade de medida (ex.: 25.00 cm² ou 20.00 cm).
    return `${valor.toFixed(2)} ${unidade}`
}

export function validEntrad(entrada){
    // ● Tratamento obrigatório: Validar entradas para impedir medidas menores ou iguais a zero (retornar 0 ou lançar exceção com throw new Error()).
    if (entrada<=0){
        console.log(`O valor de entrada não é válido.`)
        tratEntrada = 0;
    } else {
        tratEntrada = 0;
    }
    return tratEntrada;
}