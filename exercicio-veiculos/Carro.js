import { Veiculo } from "./Veiculo";

export class Carro extends Veiculo{
    #portas; //Number
    constructor (marca, modelo, autonomiaKml, portas){
        super(marca, modelo, autonomiaKml);
        this.#portas = portas;
    }

    descricao(){
        return "descrição Carro"
    }

    temPortaMalasGrande(){
        return "porta malas: sim/não"
    }

    getPortas(){
        return this.#portas;
    }

    setNovasPortas(novasPortas){
        this.#portas = novasPortas;
    }
}