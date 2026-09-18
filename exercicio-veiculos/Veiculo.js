export class Veiculo {
    #marca; //String
    #modelo; //String
    #autonomiaKmL; //Number
    constructor (marca, modelo, autonomiaKmL){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKmL = autonomiaKmL;
    }
    
    static totalCriados; //Number

    descricao(){
        return "descrição Veículo" //String
    }

    litrosParaViagem(km){
        return `litros para viagem ${km}` //Number
    }

    static quantosCriados(){
        return "quantos criados" //Number
    }
}