import 'package:flutter/material.dart'; //podemos usar tanto o material que é do google ou o cupertino do ios para criar components
//porém o material é melhor

//StatelessWidget = não tem estado ou seja, vai ser renderizado e pronto dali pra frente ele não altera mais
class AppWidget extends StatelessWidget {
  @override

  //o build é sempre responsavel para criar os componentes
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DevQuiz",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("NLW5 FLUTTER")),
        ),
        body: Center(
            //repare que podemos colocar varias coisas dentro de um container
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(10)),
                // color: Colors.purple, QUANDO COLOCO DECORATION EU NAO POSSO TER COLOR FORA DELE !!!!
                child: Text("Olá, Vitor dev.",
                    style: TextStyle(fontSize: 30, color: Colors.white)))),
        //para colocar Center ou bottom ou etc.. clique em cima do "Text" e aperte CTRL + .
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}

//scaffold, ele ja tem componentes pré definidos (o esqueleto da aplicação)
//ou seja com ele ja temos o Appbar, body(fragment screen), bottonNavigation
//ele nos da um grande poder de customização
