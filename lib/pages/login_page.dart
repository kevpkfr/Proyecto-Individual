import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    // Validar las credenciales de usuario
    if (_emailController.text == 'kevin@gmail.com' && _passwordController.text == '1234') {
      // Mostrar mensaje de ingreso exitoso
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("¡Ingreso exitoso!")),
      );
      // Navegar a la pantalla de productos si las credenciales son correctas
      Navigator.pushNamed(context, '/products');
    } else {
      // Mostrar mensaje de error si las credenciales son incorrectas
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Credenciales incorrectas")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Correo electrónico'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Contraseña'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _login(context),
              child: Text('Ingresar'),
            ),
            SizedBox(height: 10), // Espacio entre el botón y el texto
            Text(
              'Bienvenido las credenciales son: kevin@gmail.com ', 
              style: TextStyle(
                
                fontWeight: FontWeight.bold,
              ),
            ),
             Text(
              'Bienvenido la contraseña es:1234 ', // Texto de bienvenida
              style: TextStyle(
                
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
