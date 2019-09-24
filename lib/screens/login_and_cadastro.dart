import 'package:app_venda_meu_negocio/screens/usuario/cadastro_usuario.dart';
import 'package:app_venda_meu_negocio/screens/usuario/login_usuario.dart';
import 'package:app_venda_meu_negocio/util/constants.dart';
import 'package:flutter/material.dart';

class LoginAndCadastroPage extends StatefulWidget {
  @override
  _LoginAndCadastroPageState createState() => _LoginAndCadastroPageState();
}

class _LoginAndCadastroPageState extends State<LoginAndCadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: kColorBackgroundLogin,
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildContainerLogo(),
                  _buildContainerTabs(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

//All Conponents on Page
  Container _buildContainerTabs() {
    return Container(
      height:
          490.0, //! Altura de todo Container aonde são adicionados os BTN, TEXT FIELD...
      width: double.infinity,
      child: DefaultTabController(
          length: 2,
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: kColorBackgroundLogin,
                elevation: 0.0, //? retira e add a sombra da tab
                bottom: TabBar(
                  indicatorColor: Colors.amber,
                  labelColor: Colors.amber,
                  labelStyle:
                      TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  tabs: <Widget>[
                    Tab(
                      icon: Icon(Icons.perm_identity),
                      text: 'Login',
                    ),
                    Tab(
                      icon: Icon(Icons.control_point_duplicate),
                      text: 'Cadastro',
                    ),
                  ],
                ),
              ),
              body: Container(
                decoration: BoxDecoration(
                  color: kColorBackgroundLogin,
                ),
                child: TabBarView(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                      child: _buildFormLogin(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: _buildFormCadastro(),
                    )
                  ],
                ),
              ))),
    );
  }

  Widget _buildContainerLogo() {
    return Container(
      height: 110.0,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/logo.png'),
              alignment: Alignment.center)),
    );
  }

//! Construção dos Componentes De Formulario
  Column _buildFormLogin() {
    return Column(
      mainAxisAlignment: MainAxisAlignment
          .start, //? POsicionamento do Conteudo dentro da coluna
      children: <Widget>[
        TextField(
          onChanged: (value) {
            debugPrint('Something changed in Title Text Field');
          },
          decoration: InputDecoration(
            labelText: 'Nome de Usuario',
            hintText: 'Digite o Nome',
            prefixIcon: Icon(
              Icons.person_pin,
              color: Colors.black45,
            ),
          ),
        ),
        TextField(
          obscureText: true,
          onChanged: (value) {
            debugPrint('Something changed in Title Text Field');
          },
          decoration: InputDecoration(
            labelText: 'Senha',
            hintText: 'Digite a Senha',
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.black45,
            ),
          ),
        ),
        SizedBox(
          height: 70.0,
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            elevation: 3.0,
            onPressed: () => print('Login Button'),
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.amber,
            child: Text(
              'ENTRAR',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
            ),
          ),
        ),
      ],
    );
  }
//! Construção dos Componentes De Formulario de Cadastro
  Column _buildFormCadastro() {
    return Column(
      mainAxisAlignment: MainAxisAlignment
          .start, //? POsicionamento do Conteudo dentro da coluna
      children: <Widget>[
        TextField(
          onChanged: (value) {
            debugPrint('Something changed in Title Text Field');
          },
          decoration: InputDecoration(
            labelText: 'Nome',
            hintText: 'Digite o Nome',
            prefixIcon: Icon(
              Icons.person_outline,
              color: Colors.black45,
            ),
          ),
        ),
        TextField(
          onChanged: (value) {
            debugPrint('Something changed in Title Text Field');
          },
          decoration: InputDecoration(
            labelText: 'Senha',
            hintText: 'Digite o Senha',
            prefixIcon: Icon(
              Icons.lock_outline,
              color: Colors.black45,
            ),
          ),
        ),
        TextField(
          onChanged: (value) {
            debugPrint('Something changed in Title Text Field');
          },
          decoration: InputDecoration(
            labelText: 'Telefone',
            hintText: 'Digite o Telefone',
            prefixIcon: Icon(
              Icons.phone_android,
              color: Colors.black45,
            ),
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: double.infinity,
          child: RaisedButton(
            elevation: 3.0,
            onPressed: () => print('Cadastro Button'),
            padding: EdgeInsets.all(15.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            color: Colors.amber,
            child: Text(
              'CADASTRAR',
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans'),
            ),
          ),
        ),
      ],
    );
  }
}
