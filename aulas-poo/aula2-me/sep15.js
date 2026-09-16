// let carOption = Number(prompt("Digite o número do seu carro: "));
// carOption = "carro"+carOption;
// alert(carOption)

// class carro{
//     constructor(ano, modelo, marca){
//         this.ano = ano;
//         this.modelo = modelo;
//         this.marca = marca;
//     }
//     acelerar(){
//         return 'O carro está acelerando';
//     }
//     frear(){
//         return 'O carro está freando';
//     }
//     apresentar(){
//         return "O carro "+ this.modelo + " da marca " + this.marca + " do ano " + this.ano + "está disponível na loja!";1
//     }
// }

// //Instanciando o objeto da classe carro
// const carro1 = new carro(2022,'Civic','Honda')

// console.log(carro1.apresentar());
// console.log(carro1.acelerar());
// console.log(carro1.frear());

// const carro2 = new carro(2026, 'Kicks', 'Nissan')

// console.log(carro2.apresentar())

// const carro3 = new carro(2030, 'Air', 'Lamborghini')






//EXEMPLO CARRO (by PROF) 
// class Carro{
//     constructor(ano,modelo,marca){
//         this.ano = ano;
//         this.modelo = modelo;
//         this.marca = marca;
//     }
//     acelerar(){
//         return 'O carro esta acelerando'
//     }
//     frear(){
//         return 'O carro esta freando'
//     }
//     apresentar(){
//         return "O carro "+this.modelo+" da marca "+this.marca+" do ano "+this.ano+" esta disponível na loja!"
//     }
// }

// //instanciando o objeto da classe Carro
// const carro1 = new Carro(2022,'Civic','Honda');

// console.log(carro1.apresentar());
// console.log(carro1.acelerar());
// console.log(carro1.frear());

// const carro2 = new Carro(1980,'Gol','Volkswagen');
// console.log(carro2.apresentar());

// const carro3 = new Carro(2020,"HB20","Hyundai");

// console.log(carro3.apresentar());




//EXEMPLO PESSOA / PROF / ALUNO 

// class Pessoa{
//     constructor(nome, rg, cpf, telefone, email){
//         this.nome = nome;
//         this.rg = rg;
//         this.cpf = cpf;
//         this.telefone = telefone;
//         this.email = email;
//     }
//     /* apresentarPessoa(){
//      return `\nDADOS DA PESSOA \n\n Nome: ${this.nome} \n cpf: ${this.cpf} \n email: ${this.email} \n Matricula: ${this.matricula } \n Curso ${this.curso} \n`
//      }*/
//     apresentar(){
//         return `Esta pessoa é ${this.nome}`
//     }
// }

// class Professor extends Pessoa{
//     constructor(nome, rg, cpf, telefone, email,matricula, segmento){
//         super(nome, rg, cpf, telefone, email)
//         this.matricula = matricula;
//         this.segmento = segmento;
//     }
//     apresentar(){
//         return `Este professor(a) é ${this.nome} da materia ${this.segmento}`
//     }
// }

// class Aluno extends Pessoa{
//     constructor(nome, rg, cpf, telefone, email,matricula, curso){
//         super(nome, rg, cpf, telefone, email)
//         this.matricula = matricula;
//         this.curso = curso;
//     }
//     /* apresentarAlunos(){
//          return `\nDADOS DO ALUNO \n\n Nome: ${this.nome} \n cpf: ${this.cpf} \n email: ${this.email} \n Matricula: ${this.matricula } \n Curso ${this.curso} \n`
//      }*/
//     apresentar(){
//         return `Este aluno(a) é ${this.nome} do curso ${this.curso}`
//     }//Ao comentar este método ele é sobreescrito pela class pai
// }

// //criar pessoa
// let pessoa1 = new Pessoa('ze',123,456,789,"ze@mail")

// console.log(`A pessoa ${pessoa1.nome} de rg ${pessoa1.rg} e email ${pessoa1.email}`)

// //criar prof
// let professor1 = new Professor ('Ana',987,654,321,'ana@mail','000','Artes',)

// console.log(`A professora ${professor1.nome} de rg ${professor1.rg} e email ${professor1.email}`)

// //criar alunos
// let aluno1 = new Aluno('Th',4234,535,35434,'th@mail',554,'dev')
// let aluno2 = new Aluno('At',5225,2423,4234,'at@mail',4234,'dev')

// // console.log(`\nDADOS DO ALUNO 1 \n\n Nome: ${aluno1.nome} \n cpf: ${aluno1.cpf} \n email: ${aluno1.email} \n Matricula: ${aluno1.matricula } \n Curso ${aluno1.curso} \n`)
// // console.log(`\nDADOS DO ALUNO 2 \n\n Nome: ${aluno2.nome} \n cpf: ${aluno2.cpf} \n email: ${aluno2.email} \n Matricula: ${aluno2.matricula } \n Curso ${aluno2.curso} \n`)

// /*console.log(aluno1.apresentarAlunos());
// console.log(aluno2.apresentarAlunos());*/

// console.log(pessoa1.apresentar())
// console.log(professor1.apresentar())
// console.log(aluno1.apresentar())




//EXERCÍCIO
// 1 – EXERCÍCIO DE CLASSES E HERANÇA
// - Crie um programa que contenha a classe Produto e crie seus atributos (NomeProduto, ValorProduto, AnoProduto e ValidadeProduto) 
// - Faça o método construtor com todos os atributos. também um método com nome de: ExibirProduto() para exibir os dados dos atributos. 
// - instancie a classe Produto, insira valores nos atributos (através do método construtor) e exiba os valores dos atributos com o método ExibirProduto(). 
// - crie classes filho de produtos(Padaria, Açougue) 
// - sobrescreva o metodo ExibirProduto() da classe mãe


class Produto{
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


class Padaria extends Produto{
    constructor(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto, Quantidade){
        super(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto);
        this.Quantidade = Quantidade;
    }
    ExibirProduto(){
        return `Informações do Produto \n\n ${this.NomeProduto} \n Valor: ${this.ValorProduto} \n Ano: ${this.AnoProduto} \n Validade: ${this.ValidadeProduto} \n Quantidade: ${this.Quantidade} \n`
    }
}

class Acougue extends Produto{
    constructor(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto, Kilo){
        super(NomeProduto, ValorProduto, AnoProduto, ValidadeProduto);
        this.Kilo = Kilo;
    }
    ExibirProduto(){
        return `Informações do Produto \n\n ${this.NomeProduto} \n Valor: ${this.ValorProduto} \n Ano: ${this.AnoProduto} \n Validade: ${this.ValidadeProduto} \n Kilo: ${this.Kilo} \n`
    }
}


let produto1 = new Produto(`Café`,30,2026,12)
let produto2 = new Produto(`Pão`,10,2026,1)

let produto3 = new Padaria(`Bolo`,12,2026,10, 3)
let produto4 = new Acougue(`Carne`,50,2026,10, 2)

console.log(produto1.ExibirProduto())
console.log(produto2.ExibirProduto())
console.log(produto3.ExibirProduto())
console.log(produto4.ExibirProduto())