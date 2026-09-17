import { Produto } from "./Produto.js";

export class Limpeza extends Produto {
    #tamanho;
    #valor;
    constructor(nome, ano, validade, valor, tamanho){
        super(nome, ano, validade);
        this.#tamanho = tamanho;
        this.#valor = valor;
    }

    exibirProduto(){
        return `O produto ${this.getNome()} custa ${this.#valor} e mede ${this.#tamanho}`
        }
}