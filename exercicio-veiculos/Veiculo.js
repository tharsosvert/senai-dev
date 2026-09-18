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

    getMarca(){
        return this.#marca;
    }

    setNome(novaMarca){
        this.#marca = novaMarca;
    }

    getModelo(){
        return this.#modelo;
    }

    setModelo(novoModelo){
        this.#modelo = novoModelo;
    }

    getAutonomiaKmL(){
        return this.#autonomiaKmL;
    }

    setNovaAutonomiaKmL(novaAutonomiaKmL){
        this.#autonomiaKmL = novaAutonomiaKmL;
    }
}