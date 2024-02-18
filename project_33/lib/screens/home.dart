import 'package:flutter/material.dart';
import 'package:project_2/data/dataset.dart';
import 'package:project_2/model/planet_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        length: 3,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //-------------------- First Container
              Padding(
                padding: EdgeInsets.all(6),
                child: Container(
                  width: 400,
                  height: 250,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          'images/FullImage.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          'There’s a Plant\n for everyone',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 100,
                        left: 20,
                        child: Text(
                          'Get your 1st plant \n@ 40% off',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //------------------------ Search Field
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.menu,
                      size: 24,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              //---------------------- TabBar
              TabBar( indicatorColor: Colors.green, 
                labelColor: Colors.green, 
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'All planets'),
                  Tab(text: 'Indoor'),
                  Tab(text: 'Outdoor'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    //-- Contents of First Tab
                    Center(
                      child: PlantList(plants: plantsData),
                    ),
                    //--  Second Tab
                    Center(
                      child:  PlantList(plants: plantsData, type: 'Indoor Plant'),
                    ),
                    //--  Third Tab
                    Center(
                      child:PlantList(plants: plantsData, type: 'Outdoor Plant'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
