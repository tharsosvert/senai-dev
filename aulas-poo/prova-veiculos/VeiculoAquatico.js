import { Veiculo } from "./Veiculo.js";

export class VeiculoAquatico extends Veiculo {
    #tipoPropulsao
    constructor(marca, modelo, autonomiaKmL, tipoPropulsao){
        super(marca,modelo,autonomiaKmL);
        this.#tipoPropulsao = tipoPropulsao;
    }

    descricao(){
        return `Descrição padrão de VeiculoAquatico`
    }

    getTipoPropulsao(){
        return this.#tipoPropulsao;
    }

    setTipoPropulsao(novoTipoPropulsao){
        this.#tipoPropulsao = novoTipoPropulsao;
    }
}