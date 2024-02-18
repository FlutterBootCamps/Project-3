import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("asset/logo.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text("PLANTIFY"), // style font
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Image.asset("asset/menu.png")),
                ],
              )
            ],
          ),
        ),
      ),

      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 32, top: 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Alaa Alyahya", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color:Color(0xff0D986A) )),
              Text("Alaa@gmail.com", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}



