// lib/pages/welcome_page.dart
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenida'),
      ),
      body: Center(
        child: Text('Bienvenido a la aplicación!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
