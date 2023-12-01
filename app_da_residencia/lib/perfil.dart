import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'home.dart';
import 'login.dart';
import 'maquiagem.dart';
import 'vest_acessorios.dart';
import 'vest_calcados.dart';
import 'vest_roupas.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  String _userName = 'Nome do usuário';
  bool _isEditing = false;  String _imagePath = ''; 


  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagePath = pickedFile.path;
      });
    }
  }

  void _saveName() {
    setState(() {
      _userName = _nameController.text;
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        backgroundColor: Color(0xFF76AD8D),
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF76AD8D),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 120,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFF76AD8D),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/imgs/logoclara.png',
                        height: 50,
                        width: 200,
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 23),
                leading: Icon(Icons.home_rounded),
                title: Text(
                  'Início',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(), 
                    ),
                  );
                },
              ),
              ListTile(
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '     Buscar...',
                            hintStyle: TextStyle(fontSize: 17, color: Colors.grey),
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search_rounded),
                          ),
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {},
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.only(left: 23),
                leading: Icon(Icons.checkroom_rounded),
                title: Text(
                  'Vestuário',
                  style: TextStyle(fontSize: 17),
                ),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text('Roupas', style: TextStyle(fontSize: 15)),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => RoupasScreen(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('Calçados', style: TextStyle(fontSize: 15)),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => CalcadosScreen(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text('Acessórios', style: TextStyle(fontSize: 15)),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => AcessoScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 23),
                leading: Icon(Icons.face),
                title: Text(
                  'Cosméticos',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MakeUpScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 23),
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Perfil',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {},
              ),
              
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 50,
                backgroundImage: _imagePath.isNotEmpty
                    ? FileImage(File(_imagePath))
                    : AssetImage('assets/default_avatar.jpg') as ImageProvider,
              ),
            ),
            SizedBox(height: 16),
            _isEditing
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        hintText: 'Digite o nome',
                      ),
                    ),
                  )
                : Text(
                    _userName,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
            SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                setState(() {
                  _isEditing = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Editar ',
                    style: TextStyle(color: Color(0xFF76AD8D), fontSize: 16),
                  ),
                  Icon(
                    Icons.edit,
                    color: Color(0xFF76AD8D),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: _saveName,
              child: Text('Salvar Nome'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF76AD8D),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Tem certeza que deseja sair?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 215, 85, 85),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Não'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF76AD8D),
                              foregroundColor: Colors.white,
                            ),
                            child: Text('Sim'),
                          ),
                        ],
                      );
                    },
                  );
              },
              child: Text('Sair',
              style: TextStyle(fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF76AD8D),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFF9E2),
    );
  }
}
