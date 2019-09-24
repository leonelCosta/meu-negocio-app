import 'package:app_venda_meu_negocio/util/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _color;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Scaffold(
          appBar: AppBar(
            title: Text(
              'Vender',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            iconTheme: new IconThemeData(color: Colors.white),
          ),
          drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Color(0xFF464646),
            ),
            child: Drawer(
              elevation: 20.0,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('LC'),
                    ),
                    accountName: Text(
                      'Hamburguer do Bairro',
                      style: kLabelStyleMenu,
                    ),
                    accountEmail: Text('Leonel da Costa'),
                    decoration: BoxDecoration(color: Colors.amber),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Vender',
                      style: kLabelStyleMenu,
                    ),
                    onTap: () {
                      // This line code will close drawer programatically....
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading:
                        Icon(Icons.pie_chart_outlined, color: Colors.white),
                    title: Text('Produto', style: kLabelStyleMenu),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Ink(
                    decoration: BoxDecoration(color: Color(_color)),
                    child: ListTile(
                      leading: Icon(Icons.portrait, color: Colors.white),
                      title: Text('Clientes',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          )),
                      onTap: () {
                        setState(() {
                          _color = 0xFF6D6C6C;
                        });

                        // Navigator.pop(context);
                      },
                    ),
                  ),
                  Ink(
                    //decoration: BoxDecoration(color: Color(_color)),
                    child: ListTile(
                      leading: Icon(Icons.linear_scale, color: Colors.white),
                      title: Text('Relatorios',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            letterSpacing: 1.5,
                          )),
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
