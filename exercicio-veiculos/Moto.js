export class Moto {
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
}