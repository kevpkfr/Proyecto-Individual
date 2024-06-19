// lib/pages/computers_page.dart
import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../data/products.dart';
import '../widgets/product_tile.dart';

class ComputersPage extends StatelessWidget {
  final Cart cart;

  ComputersPage({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computadores'),
      ),
      body: ListView.builder(
        itemCount: computers.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: computers[index],
            onAddToCart: () {
              cart.addProduct(computers[index]);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${computers[index].name} agregado al carrito')),
              );
            },
          );
        },
      ),
    );
  }
}
