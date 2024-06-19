// lib/pages/gadgets_page.dart
import 'package:flutter/material.dart';
import '../models/cart.dart';
import '../data/products.dart';
import '../widgets/product_tile.dart';

class GadgetsPage extends StatelessWidget {
  final Cart cart;

  GadgetsPage({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gadgets'),
      ),
      body: ListView.builder(
        itemCount: gadgets.length,
        itemBuilder: (context, index) {
          return ProductTile(
            product: gadgets[index],
            onAddToCart: () {
              cart.addProduct(gadgets[index]);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${gadgets[index].name} agregado al carrito')),
              );
            },
          );
        },
      ),
    );
  }
}
