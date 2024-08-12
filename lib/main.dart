import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:toko_roti/firebase_options.dart';
import 'package:toko_roti/login_page.dart';
import 'package:toko_roti/product_selection_page.dart';
import 'package:toko_roti/register_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Roti',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: LoginPage(),
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) =>
            ProductSelectionPage(), // Ini untuk halaman beranda setelah login
      },
    );
  }
}
