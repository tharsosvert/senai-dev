class Carro{
    constructor(ano,modelo,marca){
        this.ano = ano;
        this.modelo = modelo;
        this.marca = marca;
    }
    acelerar(){
        return 'O carro esta acelerando'
    }
    frear(){
        return 'O carro esta freando'
    }
    apresentar(){
        return "O carro "+this.modelo+" da marca "+this.marca+" do ano "+this.ano+" esta disponível na loja!"
    }
}

//instanciando o objeto da classe Carro
const carro1 = new Carro(2022,'Civic','Honda');

console.log(carro1.apresentar());
console.log(carro1.acelerar());
console.log(carro1.frear());

const CARRO2 = new Carro(1980,'Gol','Volkswagen');
console.log(carro2.apresentar());

let carro3 = new Carro(2020,"HB20","Hyundai");

console.log(carro3.apresentar());
