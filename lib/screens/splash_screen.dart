import 'dart:async';

import 'package:flutter/material.dart';

import 'login_and_cadastro.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/Loading.png'), fit: BoxFit.cover),
    ));
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 7), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => LoginAndCadastroPage()));
  }
}
