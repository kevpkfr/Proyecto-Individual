import 'package:flutter/material.dart';

class OptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla de Opciones'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Opciones disponibles en la tienda'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/computers');
              },
              child: Text('Computadores'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/phones');
              },
              child: Text('Teléfonos'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/gadgets');
              },
              child: Text('Gadgets'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text('Volver a Bienvenida'),
            ),
          ],
        ),
      ),
    );
  }
}
