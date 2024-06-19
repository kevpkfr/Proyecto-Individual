// lib/navbar.dart
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Kevin Pinsag"),
            accountEmail: Text("kpinsag@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("images/perfil.jpg", fit: BoxFit.cover),
              ),
            ),
            decoration: BoxDecoration(color: Colors.blue),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () => Navigator.pushNamed(context, '/'),
          ),
          ListTile(
            leading: Icon(Icons.computer),
            title: Text("Computadores"),
            onTap: () => Navigator.pushNamed(context, '/computers'),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("Teléfonos"),
            onTap: () => Navigator.pushNamed(context, '/phones'),
          ),
          ListTile(
            leading: Icon(Icons.watch),
            title: Text("Gadgets"),
            onTap: () => Navigator.pushNamed(context, '/gadgets'),
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text("Carrito"),
            onTap: () => Navigator.pushNamed(context, '/cart'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("Descripción del Proyecto"),
            onTap: () => Navigator.pushNamed(context, '/description'),
          ),
        ],
      ),
    );
  }
}
