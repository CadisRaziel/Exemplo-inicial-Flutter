import 'package:flutter/material.dart';
import 'package:nlw/home/widgets/appbar/app_bar_widget.dart';
import 'package:nlw/home/widgets/level_button/level_button_widget.dart';
import 'package:nlw/home/widgets/quiz_card/quiz_card_widget.dart';

//repare que na home page vamos colocar o StateFulWidget pois o usuario vai interagir com ela e itens serão alterado

class HomePage extends StatefulWidget {
  //quando coloco ? estou dizendo que pode ser nullo
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //precisamos criar um codigo para por dentro da AppBarWidget que é o "PreferredSizeWidget" que é obrigatorio
        //pois esse PreferredSizeWidget faz com que deixe ela em um tamanho fixo e quando tiver scroll só sera feita abaixo
        appBar: AppBarWidget(),

        //colocando todos os botões em uma linha
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Column(
            children: [
              //colocando espaçamento entre os botoes e o score_card
              SizedBox(height: 25),
              Row(
                //colocando espaçamento
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(label: "Fácil"),
                  LevelButtonWidget(label: "Médio"),
                  LevelButtonWidget(label: "Difícil"),
                  LevelButtonWidget(label: "Perito"),
                ],
              ),
              //renderizando o card (e colocando um depois do outro ao invez de um abaixo do outro)
              SizedBox(height: 25),
              Expanded(
                  child: GridView.count(
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: [
                  QuizCardWidget(),
                  QuizCardWidget(),
                  QuizCardWidget()
                ],
              ))
            ],
          ),
        ));
  }
}
