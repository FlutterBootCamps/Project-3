import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
              
              SizedBox(width: 16),
              Icon(Icons.menu_sharp),
            ],
          ),
        ),
      
      body: Column(
        children: [
          Text('Saud AL-Qurashi ', style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold, 
                    color: const Color.fromARGB(255, 6, 67, 8),
          
          ),
           ),
        ],
      ),
    );
  }
}
