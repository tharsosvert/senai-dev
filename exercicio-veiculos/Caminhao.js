import { Veiculo } from "./Veiculo";

export class Caminhao extends Veiculo {
    #capacidadeCarga;
    constructor (marca, modelo, autonomiaKml, capacidadeCarga){
        super(marca, modelo, autonomiaKml);
        this.#capacidadeCarga = capacidadeCarga;
    }

    descricao(){
        return "descrição Caminhão"
    }

    calcularFrete(){
        return "imagine calcular frete"
    }

    getCapacidadeCarga(){
        return this.#capacidadeCarga;
    }

    setNovaCapacidadeCarga(novaCapacidadeCarga){
        this.#capacidadeCarga = novaCapacidadeCarga;
    }
}