import 'package:flutter/material.dart';
import 'package:plant_shop/component/list_home_generate.dart';
import 'package:plant_shop/component/search_text_field.dart';
import 'package:plant_shop/helper/extensions/screen_helper.dart';
import '../component/ad_firest_buy.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> type = <Widget>[Text("all"), Text("Indoor"), Text("Outdoor")];
    List<bool> _selectedTaskPriority = [true, false, false];
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("image/Group 46.png"),
        title: Text("Plantify"),
        actions: [
          Image.asset("image/Group 153.png", height: 30, width: 30),
          Image.asset("image/Frame 97.png", height: 30, width: 30),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView(children: [
          AdFirestBuy(),
          Row(
            children: [
              SizedBox(
                  width: (context.getWidth() * 0.75) - 65,
                  child: SearchTextField()),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.circular(20)),
                child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: 50,
                      width: 20,
                      child: Image.asset(
                        "image/Group 71.png",
                      ),
                    )),
              )
            ],
          ),
          ToggleButtons(
            direction: Axis.horizontal,
            children: type, // Access through the instance
            isSelected: _selectedTaskPriority,
            onPressed: (int index) {
              setState(() {
                for (int i = 0; i < 3; i++) {
                  _selectedTaskPriority[i] = i == index;
                }
              });
            },
          ),
          ...generateItemList(true),
        ]),
      ),
    );
  }
}
