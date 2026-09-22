import { Poligono } from "./Poligono.js";
import { areaRetangulo, areaTriangulo, hipotenusa, formatarUnidade, validEntrad } from "./calculosGeometricos.js";

import { Quadrilatero } from "./Quadrilatero.js";
import { Quadrado } from "./Quadrado.js";
import { Retangulo } from "./Retangulo.js";

import { Triangulo } from "./Triangulo.js";
import { TrianguloEquilatero } from "./TrianguloEquilatero.js";
import { TrianguloRetangulo } from "./TrianguloRetangulo.js";

const poligono1 = new Poligono ("Estrela", 5)
console.log(poligono1.descricao());

console.log("Total Criado: "+ Poligono.quantosCriados());
// const  = new NomeDaClasse ("Star", 3)
// console.log(exemplo1.descricao());

console.log(formatarUnidade(12.345,"cm"))


console.log("Total Criado: "+ Triangulo.quantosCriados());

const quadrado1 = new Quadrado ("Square",4,10);
console.log(quadrado1.descricao());

const retangulo1 = new Retangulo ("Rectangle", 4, 20, 10);
console.log(retangulo1.descricao());

const triangEquil1 = new TrianguloEquilatero ("Equilater Triangle", 3, 12);
console.log(triangEquil1.descricao());

const triangRetang1 = new TrianguloRetangulo ("Rectangle Triangle", 3, 8, 12);
console.log(triangRetang1.descricao());