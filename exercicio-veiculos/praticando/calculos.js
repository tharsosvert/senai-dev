import { Veiculo } from "./Veiculo.js";
import { Carro } from "./Carro.js";
import { Moto } from "./Moto.js";
import { Caminhao } from "./Caminhao.js";

//Dividendo(N) / Divisor (D) = Quociente (Q) e possui Resto (R)
//Formula: (N/D=Q) e (R) | Exemplo: (10/2=5) e (R=0)

let dividendo = 10;
let divisor = 0;
let calcLitros = 0;

//retorna a quantidade de litros gastos
calcularLitros(distanciaKm, autonomiaKmL)
{
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
calcularCusto(litros, precoLitro)
{
    let calcCusto = litros * precoLitro;
    return calcCusto;
}



//retorna o custo por quilômetro
custoPorKm(custo, distanciaKm) //custo*




//retorna uma string no formato R$ 123,45
formatarReais(valor)




