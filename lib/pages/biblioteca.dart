import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  BibliotecaState createState() => BibliotecaState();
}

class BibliotecaState extends State<Biblioteca> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround, // Centraliza os itens
          children: <Widget>[
            Column(
              children: [
                Text(
                  'Tomos Periféricos',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                Text(
                  'Sua Biblioteca popular!',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'You have pushed the button this many times:',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children:  [
                  Icon(
                    Icons.add,
                    weight: 200,
                    size: 24,
                  ),
                  SizedBox(width: 8), // Espaço entre o ícone e o texto
                  Text('Adicione ai!')
                ],
              ),
            ),
          ],
        ),
      );
  }
}
