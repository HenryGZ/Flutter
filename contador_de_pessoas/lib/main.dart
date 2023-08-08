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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Pode entrar!',
              style: TextStyle(
                fontSize: 28,
                color: Color.fromARGB(255, 195, 195, 195),
                fontWeight: FontWeight.w800,
              )),
          Text(
            '0',
            style: TextStyle(fontSize: 100, color: Colors.white),
          )
        ],
      ),
    );
  }
}


 //   appBar: AppBar( //barra superior do aplicativo
        //     title: Text('Olá mundo'),
        //   ),
        //   drawer: Drawer(), //menu sanduiche