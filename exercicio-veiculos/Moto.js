import { Veiculo } from "./Veiculo";

export class Moto extends Veiculo{
    #cilindradas; //Number
    constructor (marca, modelo, autonomiaKml, cilindradas){
        super(marca, modelo, autonomiaKml);
        this.#cilindradas = cilindradas;
    }

    descricao(){
        return "descrição Moto"
    }

    ehAltaCilindrada(){
        return "eh Alta Cilindrada"
    }

    getCilindradas(){
        return this.#cilindradas;
    }

    setNovasCilindradas(novasCilindradas){
        this.#cilindradas = novasCilindradas;
    }
}