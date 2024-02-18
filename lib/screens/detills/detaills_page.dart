import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

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
              Icon(Icons.notifications_none),
              SizedBox(width: 16),
              Icon(Icons.search),
            ],
          ),
        ),
      
      body: const Center(
        child: Text('detaills'),
      ),
    );
  }
}
