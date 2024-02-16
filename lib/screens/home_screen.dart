import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/utils/colors.dart';
import 'package:plantify/widgets/ad_banner.dart';
import 'package:plantify/widgets/home_tab_controller.dart';
import 'package:plantify/widgets/icon_button_container.dart';
import 'package:plantify/widgets/text_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: designColors[4],
        leading: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              "assets/images/logo.png",
            )),
        title: const Text(
          "PLANTFIY",
          style: TextStyle(
              fontFamily: "Philosopher",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5),
        ),
        actions: [
          badges.Badge(
              badgeStyle: badges.BadgeStyle(badgeColor: designColors[2]),
              position: badges.BadgePosition.custom(bottom: 13, end: 12),
              badgeContent: const Text(""),
              showBadge: true,
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/icons/bell.png"))),
          IconButton(
              onPressed: () {}, icon: Image.asset("assets/icons/menu.png"))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
        child: ListView(
          children: [
            const AdBanner(
              headerText: "There's a Plant for everyone",
              productText: "plant",
              offerPrecntage: 40,
              image: "assets/images/woman_holding_plant.png",
            ),
            const SizedBox(
              height: 24,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBar(
                  labelText: "Search",
                  hintText: "Enter a plant's name",
                  icon: "assets/icons/search.png",
                ),
                IconButtonContainer(icon: "assets/icons/filter_settings.png")
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: context.getWidth(context) * .8,
              height: 23,
              child: HomeTabBar(
                tabs: const [
                  Tab(
                    text: "All plants",
                  ),
                  Tab(
                    text: "Indoor",
                  ),
                  Tab(
                    text: "Outdoor",
                  ),
                ],
                onTap: (index) {
                  GetIt.I.get<HomeData>().plantFilterIndex = index;
                  setState(() {});
                },
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
              height: context.getHeight(context) * 2.2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: GetIt.I.get<HomeData>().getallPlants()
                  ),
            ),
            const SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }
}



