import { Produto } from './Produto.js';
import { Padaria } from './Padaria.js';
import { Acougue } from './Acougue.js';
import { Limpeza } from './Limpeza.js';

let produto1 = new Produto ("farinha","R$ 10,00", 2026, "12DEZ");
let produto2 = new Padaria ("pão","R$ 15,00", 2026, "12DEZ",200,"piraque");
let produto3 = new Acougue ("carne","R$ 50,00", 2026, "5OUT", "5KG","fraudinha");
let produto4 = new Limpeza ("Veja",2025,"DEZ/2026",45.80,"15cm",)


produto1.nome = "lapis"
produto2.nome = "arroz"
produto2.quantidade = 10
produto2.fabricacao = "ana maria"
produto3.nome="sapato"

// produto1.setNome("lapis");
// produto2.setNome("arroz");
// produto3.setNome("sapato");

//EXIBIR 
console.log(Produto.exibirProduto());
// console.log(produto1.exibirProduto());
console.log(produto2.exibirProduto());
console.log(produto3.exibirProduto());
console.log(produto4.exibirProduto());
