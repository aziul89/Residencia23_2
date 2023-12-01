import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(Cadastro());
}

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroScreen(),
    );
  }
}

class CadastroScreen extends StatefulWidget {
  @override
  _CadastroScreenState createState() => _CadastroScreenState();
}

class _CadastroScreenState extends State<CadastroScreen> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void _PopupCadastroSucesso() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Cadastro realizado com sucesso!'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(LoginPage());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF76AD8D),
              ),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/imgs/nome_concon.png',
                height: 200,
                width: 250,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Preencha os campos abaixo:',
                  style: TextStyle(
                    color: Color(0xFF67A882),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30), 
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300),
                child: TextField(
                  controller: nomeController,
                  decoration: InputDecoration(
                    labelText: 'Nome do usuário',
                    filled: true,
                    fillColor: Colors.white, 
                  ),
                  style: TextStyle(color: Colors.black), 
                ),
              ),
              SizedBox(height: 20), 
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    filled: true,
                    fillColor: Colors.white, 
                  ),
                  style: TextStyle(color: Colors.black), 
                ),
              ),
              SizedBox(height: 20), 
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 300),
                child: TextField(
                  controller: senhaController,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  obscureText: true,
                  style: TextStyle(color: Colors.black), 
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // TO DO: salvar os dados no banco de dados.
                  _PopupCadastroSucesso();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 45),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Color(0xFFACD9BE),
                  foregroundColor: Color(0xFF474E4A),
                ),
                child: Text(
                  'Cadastrar',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}
