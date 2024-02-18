import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                width: 172,
                height: 28,
                child: Image.asset('images/logo.png', fit: BoxFit.contain),
              ),
              Spacer(),
              Icon(Icons.search),
              SizedBox(width: 16),
              Icon(Icons.menu_sharp),
            ],
          ),
        ),
     
      body: const Center(
        child: Text('Cart screen'),
      ),
    );
  }
}
