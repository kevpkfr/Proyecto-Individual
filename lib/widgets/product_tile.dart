// lib/widgets/product_tile.dart
import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback onAddToCart;

  ProductTile({required this.product, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: ListTile(
        leading: Image.asset(product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(product.name),
        subtitle: Text('\$${product.price}'),
        trailing: ElevatedButton(
          onPressed: onAddToCart,
          child: Text('Agregar al carrito'),
        ),
      ),
    );
  }
}
