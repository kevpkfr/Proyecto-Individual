import 'package:flutter/material.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  final Cart cart;

  CartPage({required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrito de Compras'),
      ),
      body: ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final item = cart.items[index];
          return ListTile(
            leading: Image.asset(item.product.imageUrl, width: 50, height: 50, fit: BoxFit.cover),
            title: Text(item.product.name),
            subtitle: Text('Cantidad: ${item.quantity} - \$${item.product.price * item.quantity}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Lógica para eliminar un producto del carrito
                // Aquí se puede implementar la lógica para quitar el producto del carrito
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total: \$${cart.totalPrice}', style: TextStyle(fontSize: 20)),
            ElevatedButton(
              onPressed: () {
                // Lógica para realizar la compra
                // Aquí se puede implementar la lógica para realizar la compra
              },
              child: Text('Comprar'),
            ),
          ],
        ),
      ),
    );
  }
}
