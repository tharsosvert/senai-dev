import { VeiculoTerrestre } from "./VeiculoTerrestre.js";

export class Moto extends VeiculoTerrestre {
    #cilindradas;
    constructor(marca, modelo, autonomiaKmL, qtdRodas, cilindradas){
        super(marca,modelo,autonomiaKmL,qtdRodas);
        this.#cilindradas = cilindradas;
    }

    descricao(){
        return `Descrição padrão de Moto`
    }

    getCilindradas(){
        return this.#cilindradas;
    }

    setCilindradas(novaCilindradas){
        this.#cilindradas = novaCilindradas;
    }
}