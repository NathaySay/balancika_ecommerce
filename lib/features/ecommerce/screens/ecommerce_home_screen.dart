import 'package:flutter/material.dart';
import 'package:my_ecommerces/features/menu/screens/menu_screen.dart';

// import 'package:my_ecommerces/features/qr/screens/qr_scanner_screen.dart';

class EcommerceHomeScreen extends StatelessWidget {
  const EcommerceHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Commerce Shop'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Show Menu',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MenuScreen()),
              );
            },
          ),
        ],
      ),
      body: const Center(child: Text('Welcome to E-Commerce Home')),
    );
  }
}
