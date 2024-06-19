import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  final _randomNumber = (1 + (100 * (0.01 + 0.99 * (new DateTime.now().millisecondsSinceEpoch % 1000) / 1000)).toInt());
  final _controller = TextEditingController();
  String _message = '';

  void _checkGuess() {
    final guess = int.tryParse(_controller.text);
    if (guess == null) {
      setState(() {
        _message = 'Por favor, ingresa un número válido.';
      });
      return;
    }

    if (guess < _randomNumber) {
      setState(() {
        _message = 'El número es mayor.';
      });
    } else if (guess > _randomNumber) {
      setState(() {
        _message = 'El número es menor.';
      });
    } else {
      setState(() {
        _message = '¡Correcto! Adivinaste el número.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Juego de Adivinanza de Números'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Adivina un número entre 1 y 100'),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingresa tu adivinanza',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkGuess,
              child: Text('Comprobar'),
            ),
            SizedBox(height: 20),
            Text(_message),
          ],
        ),
      ),
    );
  }
}
