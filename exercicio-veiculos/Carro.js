export class Carro {
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
}