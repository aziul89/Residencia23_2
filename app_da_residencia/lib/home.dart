import 'package:flutter/material.dart';
import 'maquiagem.dart';
import 'perfil.dart';
import 'vest_acessorios.dart';
import 'vest_calcados.dart';
import 'vest_roupas.dart';

void main() {
  runApp(Home());
}

class Product {
  String name;
  String imageUrl;

  Product({required this.name, required this.imageUrl});
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> category1Products = [
    Product(name: 'Tênis Vans', imageUrl: 'data:image/jpeg;base64,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'),
    Product(name: 'Batom Catharine Hill', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMneWLJ4epsXkONRSmLmgcEn526_7J0dpkLw&usqp=CAU'),
    Product(name: 'Camiseta Hering', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSytNpAzhbLStwK3LrHTRszx6v23KtSKrLYPw&usqp=CAU'),
    Product(name: 'Batom Océane', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOlFRed9xoCJ_p-ekvz4qDrs7eV06eSRUh-w&usqp=CAU'),
    Product(name: 'Tênis Converse All Star', imageUrl: 'data:image/jpeg;base64,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'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      appBar: AppBar(
        title: Text('Início', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                onTap: () {},
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTitle('Mais Procurados'),
            _buildProductList(category1Products),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFF557D6A)),
      ),
    );
  }

  Widget _buildProductList(List<Product> products) {
    return Column(
      children: products.map((product) {
        return Padding(
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
                      image: NetworkImage(product.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Container(
                  child: Text(
                    product.name,
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
        );
      }).toList(),
    );
  }
}
