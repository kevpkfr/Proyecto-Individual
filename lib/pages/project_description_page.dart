// lib/pages/project_description_page.dart
import 'package:flutter/material.dart';

class ProjectDescriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descripción del Proyecto'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Este proyecto es una tienda en línea donde puedes comprar computadoras, teléfonos y gadgets. '
          'Puedes agregar productos al carrito, ver el total de tu compra y proceder con la compra.',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
