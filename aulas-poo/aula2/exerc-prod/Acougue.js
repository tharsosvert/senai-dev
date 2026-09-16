import { Produto } from './Produto.js'

export class Acougue extends Produto{
  #nome
  #valor
  #ano = 0
  #validade
  #peso
  #tipo
  constructor(nome,valor,ano,validade, peso, tipo){
    super(nome,valor,ano,validade)
    this.#peso = peso;
    this.#tipo = tipo;
  }

  //busca o nome do produto
  getNome(){
    return this.#nome;
  }

  //alterar nome do produto
  setNome(novoNome){
    this.#nome = novoNome;
  }

  exibirProduto(){
    return `O produto é ${this.getNome()} de valor ${this.#valor} do peso ${this.#peso} do corte ${this.#tipo}`
    }
}