import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Criando um widget customizado chamado MyApp
//basta digitar stless e tab
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

void decressimo() {
  print('decressimo');
}

void acressimo() {
  print('acressimo');
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      // ignore: prefer_const_constructors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Contador de cliques',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 195, 195, 195),
                fontWeight: FontWeight.w800,
              )),

          //const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              '0',
              style: TextStyle(fontSize: 100, color: Colors.white),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decressimo,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(15)),
                child: const Text(
                  'Menos',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              const SizedBox(width: 30),
              TextButton(
                onPressed: acressimo,
                style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    fixedSize: const Size(100, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(15)),
                child: const Text(
                  'Mais',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


 //   appBar: AppBar( //barra superior do aplicativo
        //     title: Text('Olá mundo'),
        //   ),
        //   drawer: Drawer(), //menu sanduiche