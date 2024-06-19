import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'models/cart.dart';
import 'pages/welcome_page.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/project_description_page.dart';
import 'pages/options_page.dart';
import 'pages/computers_page.dart';
import 'pages/phones_page.dart';
import 'pages/gadgets_page.dart';
import 'pages/cart_page.dart';
import 'pages/main_page.dart';
import 'pages/products_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Cart cart = Cart();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tienda de Dispositivos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/welcome': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/description': (context) => ProjectDescriptionPage(),
        '/options': (context) => OptionsPage(),
        '/computers': (context) => ComputersPage(cart: cart),
        '/phones': (context) => PhonesPage(cart: cart),
        '/gadgets': (context) => GadgetsPage(cart: cart),
        '/cart': (context) => CartPage(cart: cart),
        '/products': (context) => ProductsPage(),
      },
    );
  }
}
