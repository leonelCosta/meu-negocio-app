
import 'package:app_venda_meu_negocio/screens/home_screen.dart';
import 'package:app_venda_meu_negocio/screens/login_and_cadastro.dart';
import 'package:flutter/material.dart';
import 'package:app_venda_meu_negocio/screens/splash_screen.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu Negócio',
      theme: ThemeData(
        primaryColor: Colors.amber,
        fontFamily:'OpenSans',
      

      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(), //! depois adicionar a pagina do Slashcreean 
    );
  }
}
