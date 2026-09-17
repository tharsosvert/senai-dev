export class Produto{
  #nome;
  static valor = 10;
  #ano;
  #validade;

  constructor(nome,ano,validade){
    this.#nome = nome;
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

  // getValor(){
  //   return this.#valor;
  // }

  // setValor(novoValor){
  //   this.#valor = novoValor;
  // }


  static exibirProduto(){
    return `Mensagem padrão do produto \n valor ${this.valor}`
    
  }
}

