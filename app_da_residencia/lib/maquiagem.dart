import 'package:flutter/material.dart';
import 'detalhes.dart';
import 'home.dart';
import 'perfil.dart';
import 'vest_acessorios.dart';
import 'vest_calcados.dart';
import 'vest_roupas.dart';

void main() {
  runApp(MakeUpCategory());
}

class Product {
  String name;
  String imageUrl;

  Product({required this.name, required this.imageUrl});
}

class MakeUpCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MakeUpScreen(),
    );
  }
}

class MakeUpScreen extends StatelessWidget {
  final List<Product> items = [
    Product(name: "Esmalte Avon", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOHssR9J3R0AhlF0kBLyG3GB8XrkpXoLsj1A&usqp=CAU"),
    Product(name: "Batom Océane", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlFRed9xoCJ_p-ekvz4qDrs7eV06eSRUh-w&usqp=CAU"),
    Product(name: "Hidratante Neutrogena", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRD4QnWbTU1bZSKKoqqHZwYhH8qxaR7Dq_eh0r2z5CM9IWN4SbaPOsQ1tda_FYUuxCi3jA&usqp=CAU"),
    Product(name: "Sérum Sallve", imageUrl: "data:image/jpeg;base64,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"),
    Product(name: "Gelatina Salon Line", imageUrl: "data:image/jpeg;base64,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"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      appBar: AppBar(
        title: Text('Cosméticos', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                onTap: () {},
              ),
              ListTile(
                contentPadding: EdgeInsets.only(left: 23),
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Perfil',
                  style: TextStyle(fontSize: 17),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navegar para a tela de detalhes do produto
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  child: Container(
                    height: 100,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                      image: DecorationImage(
                        image: NetworkImage(items[index].imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    child: Text(
                      items[index].name,
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
        },
      ),
    );
  }
}
