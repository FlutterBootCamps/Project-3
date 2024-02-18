import 'package:flutter/material.dart';
import 'package:project3/screens/widgets/custom_textfiled.dart';
import 'package:project3/screens/widgets/filter_widget.dart';
import 'package:project3/screens/widgets/products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Row(
                  children: [
                    Container(
                      height: 28,
                      width: 172,
                      child: Image.asset("image/Logoimg_plantify.png"),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.notification_add_outlined,
                      size: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.menu,
                      size: 25,
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("image/img_1.png"),
                  ),
                ),
                width: 337,
                height: 199,
              ),
              SizedBox(height: 5),
              SearchWidget(), // Place the SearchWidget here
              Categories(),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product1(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product2(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Image.asset("image/img_l1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product3(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product4(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Image.asset("image/img_l2.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product5(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Product6(),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30),
                child: Image.asset("image/img_l3.PNG"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
