import 'package:flutter/material.dart';

import '../home_screen.dart';

class ProdutoPage extends StatelessWidget {
  const ProdutoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(
        title: Text('Produto'),
      ),
      body: Center(
        child: Text('This Page Belong a page nº = > 3'),
      ),
    );
  }
}