import 'package:flutter/material.dart';

import '../home_screen.dart';

class VenderPage extends StatelessWidget {
  const VenderPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(
        title: Text('Vender'),
      ),
      body: Center(
        child: Text('This Page Belong a page nº = > 2'),
      ),
    );
  }
}