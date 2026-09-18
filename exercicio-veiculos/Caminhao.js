export class Caminhao {
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
}