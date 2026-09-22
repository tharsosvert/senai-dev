export class Poligono {
    #nome;
    #qtdLados=0;

    static totalCriados = 0;
    

    constructor(nome, qtdLados){
        this.#nome = nome;
        this.#qtdLados = qtdLados;

        Poligono.totalCriados++;
    }

    // descricao(), calcularArea(), calcularPerimetro()
    descricao(){
        return `Atenção: O objeto poligono não pode ser instanciado.`
    }

    calcularArea(){//Number

    }

    calcularPerimetro(){//Number

    }

    static quantosCriados(){//Number
        return Poligono.totalCriados;
    }

    getNome(){
        return this.#nome
    }

    setNome(novoNome){
        this.#nome = novoNome;
    }

    getQtdLados(){
        return this.#qtdLados;
    }

    setQtdLados(novaQtdLados){
        this.#qtdLados = novaQtdLados;
    }
}