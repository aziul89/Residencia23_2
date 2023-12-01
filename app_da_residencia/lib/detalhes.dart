import 'package:flutter/material.dart';
import 'home.dart';
import 'perfil.dart';
import 'vest_acessorios.dart';
import 'vest_calcados.dart';
import 'vest_roupas.dart';

void main() {
  runApp(ProductDetailsApp());
}

class Product {
  String name;
  String imageUrl;

  Product({required this.name, required this.imageUrl});
}

class ProductDetailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product = Product(name: "Esmalte Avon", imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOHssR9J3R0AhlF0kBLyG3GB8XrkpXoLsj1A&usqp=CAU");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              product.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Center(
              child: Image.network(
                product.imageUrl,
                height: 200,
                width: 200,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Informações:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            ProductInfoTile(title: 'Embalagem sustentável: SIM'),
            ProductInfoTile(title: 'Cruelty Free: SIM'),
            ProductInfoTile(title: 'Pegada de CO2: BAIXA'),
            ProductInfoTile(title: 'Alergênicos: SIM'),
          ],
        ),
      ),
      backgroundColor: Color(0xFFFFF9E2),
    );
  }
}

class ProductInfoTile extends StatelessWidget {
  final String title;

  ProductInfoTile({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check, color: Color(0xFF76AD8D)),
        SizedBox(width: 8),
        Text(title, style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
