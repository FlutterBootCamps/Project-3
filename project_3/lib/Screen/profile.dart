import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(image: AssetImage('images/Logo.png')),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Philosopher',
            color: Color(0xff002140),
          ),
        ),
        actions: [Image.asset('images/Frame 97.png')],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sultan Alotaibi",
              style: TextStyle(
                fontSize: 32,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff0D986A),
              ),
            ),
            const Text(
              "sulta7n77@gmail.com",
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                color: Color(0xff203901),
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchURL("https://github.com/");
              },
              child: const Text(
                "https://github.com/",
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff203901),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
