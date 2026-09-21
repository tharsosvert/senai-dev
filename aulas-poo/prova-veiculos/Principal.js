import { Veiculo } from "./Veiculo.js";
import { calcularLitros, calcularCusto, custoPorKm, formatarReais, tratarDiv } from "./calculos.js"

import { VeiculoTerrestre } from "./VeiculoTerrestre.js";
import { Carro } from "./Carro.js"; 
import { Moto } from "./Moto.js";

import { VeiculoAquatico } from "./VeiculoAquatico.js";
import { Barco } from "./Barco.js";
import { Jetski } from "./Jetski.js";

// Instância de objeto para testes + Contagem teste
// const veiculoTest = new Veiculo("MarcaTest", "ModelTest", 50);
// console.log(`${veiculoTest.descricao()} \n\nMarca: ${veiculoTest.getMarca()} \nModelo: ${veiculoTest.getModelo()} \nAutonomiaKmL: ${veiculoTest.getAutonomiaKmL()}`);
// console.log(Veiculo.totalCriados);

const carro1 = new Carro("Nissan", "Kicks", 20, 4, 4);
console.log(`${carro1.descricao()} \n\nMarca: ${carro1.getMarca()} \nModelo: ${carro1.getModelo()} \nAutonomiaKmL: ${carro1.getAutonomiaKmL()} \nRodas: ${carro1.getQtdRodas()} \nPortas:${carro1.getPortas()}`);

console.log(custoPorKm(6.15,250));
console.log(formatarReais(0.49));

const moto1 = new Moto("Toyota", "Cross", 30, 2, 150);
console.log(`${moto1.descricao()} \n\nMarca: ${moto1.getMarca()} \nModelo: ${moto1.getModelo()} \nAutonomiaKmL: ${moto1.getAutonomiaKmL()}`);

const barco1 = new Barco("Martinelli", "Boat", 20, "Alpha", 20);
// console.log(`${veiculoTest.descricao()} \n\nMarca: ${veiculoTest.getMarca()} \nModelo: ${veiculoTest.getModelo()} \nAutonomiaKmL: ${veiculoTest.getAutonomiaKmL()}`);

const jetski1 = new Jetski("Yamaha", "Speed", 50, "Jato", 50);
// console.log(`${veiculoTest.descricao()} \n\nMarca: ${veiculoTest.getMarca()} \nModelo: ${veiculoTest.getModelo()} \nAutonomiaKmL: ${veiculoTest.getAutonomiaKmL()}`);


//README
//aqui no final foi meio corrido então não consegui apresentar tudo, mas se puder ver a estrutura, acredito que está certa (ou pelo menos no caminho)