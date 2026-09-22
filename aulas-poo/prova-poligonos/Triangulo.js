import { Poligono } from "./Poligono.js";

export class Triangulo extends Poligono {
    
    constructor(nome, qtdLados){
        super(nome, qtdLados);
    }

    descricao(){
        return `Nome: ${this.getNome()} | Qtd. Lados: ${this.getQtdLados()}`
    }
}