import { Veiculo } from "./Veiculo.js";
import { Carro } from "./Carro.js";
import { Moto } from "./Moto.js";
import { Caminhao } from "./Caminhao.js";
import { Roblox } from "./calculos.js";

// import { calculo } from "./calculos.js";
import { calcularLitros, calcularCusto, custoPorKm, formatarReais } from "./calculos.js";


// alert("Hello World!");
console.log("Hello World!");

const veiculo1 = new Veiculo("Toyota", "Corola", 15.5);
console.log(veiculo1.descricao());

const veiculo2 = new Carro("BYD","Dolphin", 19.5, 4);
console.log(veiculo2.descricao());

const veiculo3 = new Moto("Hyundai","Chopper", 23, 30);
console.log(veiculo3.descricao());

const veiculo4 = new Caminhao("Honda","Carreta",12,500);
console.log(veiculo4.descricao());


// let veiculo4 = new Caminhao();
// let exampleCalc = new calculo();

let alpha = 4;
let beta = 5;

console.log(Roblox(alpha,beta));

console.log(calcularLitros(10,2));
console.log(calcularCusto(5,2.80));
console.log(custoPorKm());
console.log(formatarReais());