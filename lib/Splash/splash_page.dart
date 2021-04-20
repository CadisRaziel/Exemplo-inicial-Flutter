import 'package:flutter/material.dart';
import 'package:nlw/core/core.dart';
//para dar esse import do material rapidamente clique no Widget e de CTRL + . e vai aparecer o import dele !!

//a splash não é uma pagina que vai mudar !!!

//se eu digitar stl e der tab ele ja cria a class abaixo basta só colocar o nome dela "SplashPage"
//splashscreen concluida !!
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //colocando o background gradiente !!!
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        //colocando a imagem e posicionando ela
        child: Center(
          child: Image.asset(AppImages.logo),
        ),
      ),
    );
  }
}
