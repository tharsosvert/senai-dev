/*import { Veiculo } from "./Veiculo.js";
import { Carro } from "./Carro.js";
import { Moto } from "./Moto.js";
import { Caminhao } from "./Caminhao.js";*/

//Dividendo(N) / Divisor (D) = Quociente (Q) e possui Resto (R)
//Formula: (N/D=Q) e (R) | Exemplo: (10/2=5) e (R=0)

let dividendo = 10;
let divisor = 0;
let calcLitros = 0;

//retorna a quantidade de litros gastos
export function calcularLitros(distanciaKm, autonomiaKmL){

    dividendo = distanciaKm;
    divisor = autonomiaKmL;
    
    //Tratamento da Divisão por Zero 
    if (divisor!=0){
            calcLitros = dividendo/divisor;
        } else {
            console.log("Atenção: Não é possível executar pois o divisor é = zero. ");
        }

        return calcLitros;
}





//retorna o custo total em reais ; //litros*precoLitro
export function calcularCusto(litros, precoLitro){
    let calcCusto = litros * precoLitro;
    return calcCusto;
}



//retorna o custo por quilômetro
export function custoPorKm(custo, distanciaKm){
    return "Execução/Resultado [Função: custoPorKm]"
} //custo*




//retorna uma string no formato R$ 123,45
export function formatarReais(valor){
    return "Execução/Resultado [Função: formatarReais]"
}



export function Roblox (alpha, beta) {
    return `Congraats ${alpha + beta}` //test
}