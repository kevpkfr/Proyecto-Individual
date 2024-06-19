// lib/pages/products_page.dart
import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/products.dart';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List<Product> _products = [...computers, ...phones, ...gadgets];

  void _editProduct(int index) {
    // Implementar la lógica de edición
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
      ),
      body: ListView.builder(
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(_products[index].imageUrl, width: 50, height: 50),
            title: Text(_products[index].name),
            subtitle: Text('\$${_products[index].price.toStringAsFixed(2)}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    _editProduct(index);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      _products.removeAt(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _products.add(Product(name: 'Nuevo Producto', price: 0.0, imageUrl: 'images/new_product.png'));
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
