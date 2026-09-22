import { Quadrilatero } from "./Quadrilatero.js";

export class Quadrado extends Quadrilatero {
    #lado = 0;
    constructor(nome, qtdLados, lado){
        super(nome, qtdLados);
        this.#lado = lado;
    }

    descricao(){
        return `Nome: ${this.getNome()} | Qtd. Lados: ${this.getQtdLados()} | Lado: ${this.#lado}`
    }

    calcularArea(){

    }

    calcularPerim(){

    }

    ehDiagonalIgual(){

    }
}