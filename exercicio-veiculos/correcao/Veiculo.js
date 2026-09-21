export class Veiculo{
    #marca;
    #modelo;
    #autonomiaKml;
    static totalCriados = 0;

    constructor(marca,modelo,autonomiaKml){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKml = autonomiaKml;
        this.totalCriados=+ 1;
    }

    getMarca(){
        return this.#marca;
    }
    setMarca(novaMarca){
        this.#marca= novaMarca;
    }

    getModelo(){
        return this.#modelo;
    }
    setModelo(novoModelo){
        this.#modelo = novoModelo;
    }

    getAutonomiaKml(){
        return this.#autonomiaKml;
    }
    setAutonomiaKml(novaAutonomia){
        this.#autonomiaKml = novaAutonomia;
    }

    descricao(){
        return `---Dados do Veiculo---\n
                Marca: ${this.#marca}\n
                Modelo: ${this.#modelo}\n
                Autonomia KM/L: ${this.#autonomiaKml} kms`
    }
    descricaoConsole(){
        console.log( `---Dados do Veiculo---`);
        console.log(`Marca: ${this.#marca}`);
        console.log(`Modelo: ${this.#modelo}`);
        console.log(`Autonomia KM/L: ${this.#autonomiaKml} kms`)
    }
}