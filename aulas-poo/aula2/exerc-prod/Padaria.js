import { Produto }  from './Produtos.js';

export class Padaria extends Produto{
    constructor(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto, Quantidade){
        super(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto);
        this.Quantidade = Quantidade;
    }
    ExibirProduto(){
        return `Informações do Produto \n\n ${this.NomeProduto} \n Valor: ${this.ValorProduto} \n Ano: ${this.AnoProduto} \n Validade: ${this.ValidadeProduto} \n Quantidade: ${this.Quantidade} \n`
    }
}

// export default Padaria;