import 'package:flutter/material.dart';
import 'package:nlw/core/core.dart';

//modulo para criação do grafico circular !!
class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      //stack é para construir uma pilha
      //ou seja pega os componente e colocar um em cima do outro
      //vamos ter um circulo e vamos por o componente do texto em cima do circulo
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              //quando for por esse Circular tem 3 iguais, escolha o que é um metodo !!
              child: CircularProgressIndicator(
                //aumentando a largura
                strokeWidth: 10,

                //valor fixo que no casso é a porcentagem do quanto ele ja foi completado (ao invez de deixar ele automatico rodando na tela)
                value: .75,

                //colocando cor nele do background e da barra de porcentagem
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),

          //colocando o texto do grafico e centralizando
          Center(
            child: Text(
              "75%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
