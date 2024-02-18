import 'package:flutter/material.dart';
import 'package:nav/screens/home/all_plants_tap.dart';

import 'package:nav/screens/home/indoor_plants.dart';
import 'package:nav/screens/home/outdoor_plants_tab.dart';

import 'package:nav/widget/searsh_widget.dart';

// Home Page Widget: Displays a tabbed view for all plants, indoor plants, and outdoor plants.

class HomePage extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
 // Function to handle search queries.
   void onSearch(String query) {
    print("Searching for: $query");
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              Icon(Icons.menu_sharp),
            ],
          ),
        ),
        body: Column(
          children: [
           
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage("images/banner.png"),
                ),
              ),
              width: 337,
              height: 199,
            ),
            ),
            // Search widget.
          SearchWidget(),

             // Tab bar for different categories.
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'All plants'),
                Tab(text: 'Indoor'),
                Tab(text: 'Outdoor'),
              ],
            ),
            Expanded(
              // Tab bar view to display corresponding content for each tab.
              child: TabBarView(
                children: [
                  AllPlantsTab(),
                  IndoorPlantsTab(),
                  OutdoorPlantsTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



  






