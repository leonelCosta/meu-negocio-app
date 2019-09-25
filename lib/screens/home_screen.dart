import 'package:app_venda_meu_negocio/screens/venda/vender_screen.dart';
import 'package:app_venda_meu_negocio/util/constants.dart';
import 'package:flutter/material.dart';

import 'produto/produto_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _color = 0xFF464646;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerOnly(),
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      body: Center(child: Text('Validar or mudar a tela vender como principal')),
    );
  }
}

class DrawerOnly extends StatelessWidget {
  var _color = 0xFF464646;
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF464646),
        ),
        child: Drawer(
          child: ListView(children: <Widget>[
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
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new VenderPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.pie_chart_outlined, color: Colors.white),
              title: Text('Produto', style: kLabelStyleMenu),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new ProdutoPage()));
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
                  _color = 0xFF6D6C6C;
                  // Navigator.pop(context);
                },
              ),
            ),
          ]),
        ));
  }
}




