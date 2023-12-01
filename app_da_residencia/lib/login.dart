import 'package:flutter/material.dart';
import 'package:flutter_app/cadastro.dart';
import 'home.dart';

void main() {
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    'assets/imgs/logo.png', 
                    height: 250,
                    width: 250,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Email',
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  constraints: BoxConstraints(maxWidth: 300),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Senha',
                      suffix: GestureDetector(
                        onTap: () {
                          // lógica de "Esqueceu a senha"
                        },
                      child: Text('Esqueceu a senha?',
                      style: TextStyle(fontSize: 12),
                      ),
                     ),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(), 
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150,45),
                    backgroundColor: Color(0xFFACD9BE)),
                  child: Text(
                    'Entrar',
                    style: TextStyle(fontSize: 16)),
                ),
                SizedBox(height: 16),
                Text(
                  'OU',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cadastro()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(150,45),
                    backgroundColor: Color(0xFFACD9BE),
                  
                  ),
                  child: Text(
                    'Cadastre-se',
                    style: TextStyle(fontSize: 16)
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
