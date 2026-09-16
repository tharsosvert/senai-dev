class Pessoa{
    constructor(nome,rg,cpf,telefone,email){
        this.nome=nome;
        this.rg = rg;
        this.cpf = cpf;
        this.telefone = telefone;
        this.email = email;
    }
    apresentar(){
        return `Esta pessoa é ${this.nome}`
    }
}
class Professor extends Pessoa{
    constructor(nome,rg,cpf,matricula,segmento,telefone,email,){
        super(nome,rg,cpf,telefone,email)
        this.matricula = matricula;
        this.segmento= segmento;
    }
    apresentar(){
        return `Este professor(a) é ${this.nome} da materia ${this.segmento}`
    }
}
class Aluno extends Pessoa{
    constructor(nome,rg,cpf,matricula,curso,telefone,email,){
        super(nome,rg,cpf,telefone,email)
        this.matricula = matricula;
        this.curso= curso;
    }
    // apresentar(){
    //     return `Este aluno(a) é ${this.nome} do curso ${this.curso}`
    // }
}
let professor1 = new Professor("Ana",999,888,555,"Artes",123,'ana@email')

let pessoa1 = new Pessoa('ze',123,456,789,'ze@email')

let aluno1 = new Aluno('Luis',202,303,999,'Informatica',656565,'luis@email')

console.log(`A pessoa ${pessoa1.nome} de rg ${pessoa1.rg} e email ${pessoa1.email}`)


console.log(`A professora ${professor1.nome} de rg ${professor1.rg} e email ${professor1.email} do segmento ${professor1.segmento}`)
console.log(pessoa1.apresentar())
console.log(professor1.apresentar())
console.log(aluno1.apresentar())