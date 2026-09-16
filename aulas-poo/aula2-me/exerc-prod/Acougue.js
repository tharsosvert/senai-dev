import { Produto }  from './Produtos.js';

export class Acougue extends Produto{
    constructor(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto, Kilo){
        super(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto);
        this.Kilo = Kilo;
    }
    ExibirProduto(){
        return `Informações do Produto \n\n ${this.NomeProduto} \n Valor: ${this.ValorProduto} \n Ano: ${this.AnoProduto} \n Validade: ${this.ValidadeProduto} \n Kilo: ${this.Kilo} \n`
    }
}

// export default Acougue;