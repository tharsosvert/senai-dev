export class Produto{
  #nome
  #valor
  #ano
  #validade
  constructor(nome,valor,ano,validade){
    this.#nome = nome;
    this.#valor = valor;
    this.#ano = ano;
    this.#validade = validade;
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
  return `O produto é ${this.getNome()} de valor ${this.#valor} do ano ${this.#ano} de validade ${this.#validade}`
  }
}

