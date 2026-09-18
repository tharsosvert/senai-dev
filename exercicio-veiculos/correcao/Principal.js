import { Veiculo } from "./Veiculo.js";

const veiculo1 = new Veiculo("Toyota", "Corola", 15.5)
console.log(veiculo1.descricao());

console.log(veiculo1.descricaoConsole());
console.log(veiculo1.descricaoAlert());