export class Veiculo {
    #marca;
    #modelo;
    #autonomiaKmL;
    static totalCriados = 0;
    //função que busca o valor: quantosCriados;

    constructor(marca, modelo, autonomiaKmL){
        this.#marca = marca;
        this.#modelo = modelo;
        this.#autonomiaKmL = autonomiaKmL;
    }

    descricao(){
        return `Descrição padrão de Veiculo`;
    }

    litrosParaViagem(km){

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
}