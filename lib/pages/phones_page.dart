// lib/pages/phones_page.dart
import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../data/products.dart';
import '../widgets/product_tile.dart';

class PhonesPage extends StatelessWidget {
  final Cart cart;

  PhonesPage({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teléfonos'),
      ),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: phones[index],
            onAddToCart: () {
              cart.addProduct(phones[index]);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${phones[index].name} agregado al carrito')),
              );
            },
          );
        },
      ),
    );
  }
}
