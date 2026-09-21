export class Veiculo {
    #marca; //String
    #modelo; //String
    #autonomiaKmL; //Number
    
    static totalCriados = 0; //Number
    static quantosCriados; //incrementação

    constructor (marca, modelo, autonomiaKmL){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKmL = autonomiaKmL;
    }
    
    descricao(){
        return `--- Dados do Veículo ---\n
                Marca: ${this.#marca}\n 
                Modelo: ${this.#modelo}\n
                Autonomia Km/L: ${this.#autonomiaKmL} kms`
    }

    litrosParaViagem(km){
        return `litros para viagem ${km}` //Number
    }

    getMarca(){
        return this.#marca;
    }

    setMarca(novaMarca){
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