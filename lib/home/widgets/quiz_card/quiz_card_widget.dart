import 'package:flutter/material.dart';
import 'package:nlw/core/core.dart';
import 'package:nlw/shared/widgets/Progress_indicator/progress_indicator_widget.dart';

//criando os cards do quiz
class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.fromBorderSide(
              BorderSide(color: AppColors.border)), //border color
          color: AppColors.white, //background
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        //deixando componentes do card para ficar na lateral esquerda
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //tamanho da imagem e icone
            height: 40,
            width: 40,
            child: Image.asset(AppImages.blocks),
          ),

          //colocando espaçamento do icone para o texto(como se fosse um marginTop)
          SizedBox(height: 24),
          //texto do card
          Text(
            "Gerenciamento de Estado",
            style: AppTextStyles.heading15,
          ),

          //colocando espaçamento do Texto para o Numero de perguntas(como se fosse um marginTop)
          SizedBox(height: 24),

          //numeros de perguntas respondidas
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  "3 de 10",
                  style: AppTextStyles.body11,
                ),
              ),
              //colocando a progress bar verde
              Expanded(flex: 2, child: ProgressIndicatorWidget(value: 0.3)),
            ],
          )
        ],
      ),
    );
  }
}