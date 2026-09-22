import { Triangulo } from "./Triangulo.js";

export class TrianguloEquilatero extends Triangulo {
    #lado = 0;

    constructor(nome, qtdLados, lado){
        super(nome, qtdLados);
        this.#lado = lado;
    }

    descricao(){
        return `Nome: ${this.getNome()} | Qtd. Lados: ${this.getQtdLados()}`
    }

    calcularArea(){

    }

    calcularPerim(){

    }

    calcularAltura(){

    }
}