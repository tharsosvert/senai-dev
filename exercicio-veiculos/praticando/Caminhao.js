import { Veiculo } from "./Veiculo.js";

export class Caminhao extends Veiculo {
    #capacidadeCarga;
    constructor (marca, modelo, autonomiaKmL, capacidadeCarga){
        super(marca, modelo, autonomiaKmL);
        this.#capacidadeCarga = capacidadeCarga;
    }

    descricao(){
        return `--- Dados do Caminhão ---\n
                Marca: ${this.getMarca()}\n 
                Modelo: ${this.getModelo()}\n
                Autonomia Km/L: ${this.getAutonomiaKmL()} kms`
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