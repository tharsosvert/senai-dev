import { Triangulo } from "./Triangulo.js";

export class TrianguloRetangulo extends Triangulo {
    #base = 0;
    #altura = 0;

    constructor(nome, qtdLados, base, altura){
        super(nome, qtdLados);
        this.#base = base;
        this.#altura = altura;
    }

    descricao(){
        return `Nome: ${this.getNome()} | Qtd. Lados: ${this.getQtdLados()}`
    }

    calcularArea(){

    }

    calcularPerim(){

    }

    calcularPerim(){

    }

    calcHipotenu(){

    }
}