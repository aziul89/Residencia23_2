import 'package:flutter/material.dart';
import 'home.dart';
import 'maquiagem.dart';
import 'perfil.dart';
import 'vest_acessorios.dart';
import 'vest_calcados.dart';

void main() {
  runApp(RoupasCategory());
}

class RoupasCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RoupasScreen(),
    );
  }
}

class RoupasScreen extends StatelessWidget {
    final List<String> items = ["Top Esportivo Adidas", "Moletom GAP", "Camisa Hugo Boss", "Calça Hering", "Jaqueta Baw"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF9E2),
      appBar: AppBar(
        title: Text('Vestuário > Roupas',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
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
                            hintStyle: TextStyle(fontSize: 17, color: Colors.grey), // Cor do texto de dica
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search_rounded),
                          ),
                          style: TextStyle(fontSize: 17, color: Colors.black), // Cor do texto digitado
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
                          onTap: () {},
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
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
                            image: NetworkImage('https://example.com/product_image.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(
                    child: Text(
                      items[index],
                      maxLines: 2,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight:FontWeight.bold,
                        color: Colors.black, 
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
