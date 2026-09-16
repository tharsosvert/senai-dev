import { Produto }  from './Produtos.js';
import { Padaria }  from './Padaria.js';
import { Acougue }  from './Acougue.js';

let produto1 = new Produto(`Café`,30,2026,12)
let produto2 = new Produto(`Pão`,10,2026,1)

let produto3 = new Padaria(`Bolo`,12,2026,10, 3)
let produto4 = new Acougue(`Carne`,50,2026,10, 2)

console.log(produto1.ExibirProduto())
console.log(produto2.ExibirProduto())
console.log(produto3.ExibirProduto())
console.log(produto4.ExibirProduto())