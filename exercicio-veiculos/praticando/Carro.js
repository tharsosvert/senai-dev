import { Veiculo } from "./Veiculo.js";

export class Carro extends Veiculo{
    #portas; //Number
    constructor (marca, modelo, autonomiaKmL, portas){
        super(marca, modelo, autonomiaKmL);
        this.#portas = portas;
    }

    descricao(){
        return `--- Dados do Carro ---\n
                Marca: ${this.getMarca()}\n 
                Modelo: ${this.getModelo()}\n
                Autonomia Km/L: ${this.getAutonomiaKmL()} kms`
    }

    temPortaMalasGrande(){
        return this.#portas;
    }

    getPortas(){
        return this.#portas;
    }

    setNovasPortas(novasPortas){
        this.#portas = novasPortas;
    }
}