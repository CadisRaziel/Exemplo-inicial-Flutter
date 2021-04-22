import 'package:flutter/material.dart';
import 'package:nlw/challenge/widgets/awnser/awnser_widget.dart';
import 'package:nlw/core/app_text_styles.dart';

//cards de titulo das perguntas
class QuizWidget extends StatelessWidget {
  final String
      title; //lembre-se sempre que colocar uma propriedade "final" eu preciso colocar o "required  this.title"
  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),

          //renderizando a Awnser_widget
          AwnserWidget(
            title: "Que dia é hoje?",
            isRight: true,
            isSelected: true,
          ),
          AwnserWidget(
            title: "Que Ano é hoje?",
            isRight: false,
            isSelected: true,
          ),
          AwnserWidget(
            title: "Que Semana é hoje?",
            isRight: false,
            isSelected: false,
          ),
          AwnserWidget(
            title: "Que Mes é hoje?",
            isRight: true,
            isSelected: true,
          )
        ],
      ),
    );
  }
}
