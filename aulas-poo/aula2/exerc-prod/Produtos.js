export class Produto{
    constructor(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto){
        this.NomeProduto = NomeProduto;
        this.ValorProduto = ValorProduto;
        this.AnoProduto = AnoProduto;
        this.ValidadeProduto = ValidadeProduto;
    }
    ExibirProduto(){
        return `Informações do Produto \n\n ${this.NomeProduto} \n Valor: ${this.ValorProduto} \n Ano: ${this.AnoProduto} \n Validade: ${this.ValidadeProduto} \n`
    }
}

//export default Produto;