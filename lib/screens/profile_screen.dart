import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              height: 28,
              width: 172,
              child: Image.asset("image/Logoimg_plantify.png"),
            ),
            Spacer(),
            const Icon(
              Icons.menu,
              size: 25,
            ),
            // Container(child: Image.asset("icons/img_menu_icon.png"),)
          ],
        ),
      ),
      body:  Container(
            padding: EdgeInsets.all(16),
            child:const  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Name',
                  style: TextStyle(
                    fontSize: 50, 
                    fontWeight: FontWeight.bold,
                    color:Color.fromRGBO(13, 152, 106, 50),fontFamily: 'Poppins'),
                ),
                Text(
                  '   Email@example.com',
                  style: TextStyle(fontSize: 16,color:Color.fromRGBO(32, 57, 1, 50),fontFamily: 'Poppins'),
                ),
          ],
        ),
      ),
    );
  }
}

