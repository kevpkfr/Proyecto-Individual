// lib/models/cart.dart
import 'package:flutter/material.dart';
import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});
}

class Cart with ChangeNotifier {
  List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get totalPrice =>
      _items.fold(0, (total, item) => total + item.product.price * item.quantity);

  void addProduct(Product product) {
    for (var item in _items) {
      if (item.product == product) {
        item.quantity++;
        notifyListeners();
        return;
      }
    }
    _items.add(CartItem(product: product));
    notifyListeners();
  }

  void removeProduct(Product product) {
    _items.removeWhere((item) => item.product == product);
    notifyListeners();
  }

  void updateQuantity(Product product, int quantity) {
    for (var item in _items) {
      if (item.product == product) {
        item.quantity = quantity;
        notifyListeners();
        return;
      }
    }
  }
}
