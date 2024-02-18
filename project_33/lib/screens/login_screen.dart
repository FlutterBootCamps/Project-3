import 'package:flutter/material.dart';
import 'package:project_2/screens/dash.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Image.asset(
                'images/logo.png',
                width: 600,
                height: 150,
              ),
            ),

            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 90),
              child: SizedBox(
                width: 600,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to home screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dash()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 154, 231, 163),
                  ),
                  child: Text('Welcome', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ),

          
          ],
        ),
      ),
    );
  }
}

