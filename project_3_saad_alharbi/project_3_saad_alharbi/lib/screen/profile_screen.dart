import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset("images/app_logo.png"),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.menu, size: 30),
          )
        ],
      ),
      body: const SafeArea(
        child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Text(
            "Saad Alharbi",
            style: TextStyle(
                color: Color(0xff0D986A),
                fontSize: 32,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
