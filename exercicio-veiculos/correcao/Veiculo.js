export class Veiculo {
    #marca; //String
    #modelo; //String
    #autonomiaKmL; //Number
    static totalCriados = 0; //Number

    constructor (marca, modelo, autonomiaKmL){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKmL = autonomiaKmL;
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

    setAutonomiaKmL(novaAutonomiaKmL){
        this.#autonomiaKmL = novaAutonomiaKmL;
    }

    descricao(){
        return `---Dados do Veículo---\n
                Marca: ${this.#marca}\n 
                Modelo: ${this.#modelo}\n
                Autonomia Km/L: ${this.#autonomiaKmL} kms` //String
    }
    //Shit+Alt+Setinha copia para baixo

    descricaoConsole(){
        console.log(`---Dados do Veículo---`)
        console.log(`Marca: ${this.#marca}`)
        console.log(`Modelo: ${this.#modelo}`)
        console.log(`Autonomia Km/L: ${this.#autonomiaKmL} kms`)
    }

    descricaoAlert(){
        alert(`Dados do Veículo\n
                Marca: ${this.#marca}\n 
                Modelo: ${this.#modelo}\n
                Autonomia Km/L: ${this.#autonomiaKmL} kms`)
    }
}