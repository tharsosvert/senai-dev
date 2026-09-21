import { VeiculoTerrestre } from "./VeiculoTerrestre.js";

export class Carro extends VeiculoTerrestre {
    #portas;
    constructor(marca, modelo, autonomiaKmL, qtdRodas, portas){
        super(marca, modelo, autonomiaKmL, qtdRodas);
        this.#portas = portas;
    }

    descricao(){
        return `Descrição padrão de Carro`
    }
    
    getPortas(){
        return this.#portas;
    }
    
    setPortas(novaPortas){
        this.#portas = novaPortas;
    }
}