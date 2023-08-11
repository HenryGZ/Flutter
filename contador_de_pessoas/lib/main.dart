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
      debugShowCheckedModeBanner: false, //tira o banner de debug
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countEles = 0;
  int countNos = 0;

  bool get isEmpityEles => countEles == 0; //se count for igual a 0 retorna true
  bool get isFullEles => countEles == 15; //se count for igual a 10 retorna true

  bool get isEmpityNos => countNos == 0; //se count for igual a 0 retorna true
  bool get isFullNos => countNos == 15; //se count for igual a 10 retorna true

  void decressimo(int local) {
    setState(() {
      if (local == 1) {
        countEles--;
      } else {
        countNos--;
      }
    });
  }

  void acressimo(int local) {
    setState(() {
      if (local == 1) {
        countEles++;
      } else {
        countNos++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //responsável por construir a tela
    // ignore: prefer_const_constructors
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 61, 61, 61),
        // ignore: prefer_const_constructors
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.1),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isFullEles ? 'Ganhou!!' : 'Eles',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: isFullEles
                        ? const Color.fromARGB(255, 255, 0, 0)
                        : Colors.white),
              ),
              //const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  '$countEles', //ou count.toString()
                  style: TextStyle(
                      fontSize: 100,
                      color: isFullEles
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpityEles ? null : () => decressimo(1),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: isEmpityEles
                            ? Colors.white.withOpacity(0.20)
                            : Colors.white,
                        //se o contador for igual a 0 o botão fica desabilitado e troca de cor informando ao usuário
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
                    onPressed: isFullEles ? null : () => acressimo(1),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: isFullEles
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
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
              const SizedBox(height: 200), //espaçamento entre os contadores
              Text(
                isFullNos ? 'Ganhou!!' : 'Nós',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: isFullNos
                        ? const Color.fromARGB(255, 255, 0, 0)
                        : Colors.white),
              ),
              //const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  '$countNos', //ou count.toString()
                  style: TextStyle(
                      fontSize: 100,
                      color: isFullNos
                          ? const Color.fromARGB(255, 255, 0, 0)
                          : Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: isEmpityNos ? null : () => decressimo(2),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: isEmpityNos
                            ? Colors.white.withOpacity(0.20)
                            : Colors.white,
                        //se o contador for igual a 0 o botão fica desabilitado e troca de cor informando ao usuário
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
                    onPressed: isFullNos ? null : () => acressimo(2),
                    style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: isFullNos
                            ? Colors.white.withOpacity(0.2)
                            : Colors.white,
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
        ));
  }
}


 //   appBar: AppBar( //barra superior do aplicativo
        //     title: Text('Olá mundo'),
        //   ),
        //   drawer: Drawer(), //menu sanduiche