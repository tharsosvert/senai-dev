import { Veiculo } from "./Veiculo.js";

export class VeiculoTerrestre extends Veiculo {
    #qtdRodas;
    constructor(marca, modelo, autonomiaKmL, qtdRodas){
        super(marca, modelo, autonomiaKmL);
        this.#qtdRodas = qtdRodas;
    }

    descricao(){
        return `Descrição padrão de VeiculoTerrestre`
    }

    getQtdRodas(){
        return this.#qtdRodas;
    }

    setQtdRodas(novaQtdRodas){
        this.#qtdRodas = novaQtdRodas;
    }
}