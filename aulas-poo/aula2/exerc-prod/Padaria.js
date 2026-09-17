import { Produto } from './Produto.js'

export class Padaria extends Produto{
  //#nome
  //#valor
  //#ano
  //#validade
  //#peso
  //#tipo
  #quantidade = 0
  #fabricacao = 0
  constructor(nome,valor,ano,validade, quantidade,fabricacao){
    super(nome,valor,ano,validade)
    this.#quantidade = quantidade;
    this.#fabricacao =fabricacao;
  }

  //busca o nome do produto
  /*getNome(){
    return this.#nome;
  }*/

  //alterar nome do produto
  /*setNome(novoNome){
    this.#nome = novoNome;
  }*/

  exibirProduto(){
    return `O produto é ${this.getNome()} de valor ${this.getValor()} com ${this.#quantidade} fabricado em ${this.#fabricacao}`
    }
}

