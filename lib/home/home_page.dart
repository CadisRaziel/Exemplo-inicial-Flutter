import 'package:flutter/material.dart';
import 'package:nlw/home/widgets/appbar/app_bar_widget.dart';

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
    );
  }
}
