import { VeiculoAquatico } from "./VeiculoAquatico";

export class Jetski extends VeiculoAquatico {
    #horasUso;
    constructor(marca, modelo, autonomiaKmL, tipoPropulsao, horasUso){
        super(marca, modelo, autonomiaKmL, tipoPropulsao);
        this.#horasUso = horasUso;
    }

    descricao(){
        return `Descrição padrão de Jetski`
    }

    getHorasUso(){
        return this.#horasUso;
    }

    setHorasUso(novaHorasUso){
        this.#horasUso = novaHorasUso;
    }
}