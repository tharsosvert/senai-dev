import { calcularLitros, calcularCusto, custoPorKm, formatarReais, tratarDiv } from "./calculos.js"

export class Veiculo {
    #marca;
    #modelo;
    #autonomiaKmL;
    static totalCriados = 0;
    static quantosCriados = 0;

    constructor(marca, modelo, autonomiaKmL){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKmL = autonomiaKmL;

        Veiculo.totalCriados++;
    }

    descricao(){
        return `Atenção: Um Veiculo padrão não deve ser instanciado, favor tentar com outro objeto.`;
    }

    quantosCriados(totalCriados){
        return totalCriados;
    }

    litrosParaViagem(km){
        resultLitros = km * this.#autonomiaKmL;
        return resultLitros;
    }

    getMarca(){
        return this.#marca;
    }

    setMarca(novaMarca){
        this.#marca = novaMarca;
    }

    getModelo(){
        return this.#modelo;
    }

    setModelo(novoModelo){
        this.#modelo = novoModelo;
    }

    getAutonomiaKmL(){
        return this.#autonomiaKmL;
    }

    setAutonomiaKmL(novaAutonomiaKmL){
        this.#autonomiaKmL = novaAutonomiaKmL;
    }
}