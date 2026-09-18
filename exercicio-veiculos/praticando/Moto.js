import { Veiculo } from "./Veiculo.js";

export class Moto extends Veiculo{
    #cilindradas; //Number
    constructor (marca, modelo, autonomiaKmL, cilindradas){
        super(marca, modelo, autonomiaKmL);
        this.#cilindradas = cilindradas;
    }

    descricao(){
        return `--- Dados da Moto ---\n
                Marca: ${this.getMarca()}\n 
                Modelo: ${this.getModelo()}\n
                Autonomia Km/L: ${this.getAutonomiaKmL()} kms`
    }

    ehAltaCilindrada(){
        return this.#cilindradas;
    }

    getCilindradas(){
        return this.#cilindradas;
    }

    setNovasCilindradas(novasCilindradas){
        this.#cilindradas = novasCilindradas;
    }
}