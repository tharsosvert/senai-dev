import { VeiculoAquatico } from "./VeiculoAquatico.js";

export class Barco extends VeiculoAquatico {
    #caladoMetros;
    constructor(marca, modelo, autonomiaKmL, tipoPropulsao, caladoMetros){
        super(marca, modelo, autonomiaKmL, tipoPropulsao);
        this.#caladoMetros = caladoMetros;
    }

    descricao(){
        return `Descrição padrão de Barco`
    }

    getCaladoMetros(){
        return this.#caladoMetros;
    }

    setCaladoMetros(novoCaladoMetros){
        this.#caladoMetros = novoCaladoMetros;
    }
}