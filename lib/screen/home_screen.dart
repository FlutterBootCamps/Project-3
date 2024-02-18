import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3/screen/widgets/First_Custm_Wedgits.dart';
import 'package:project_3/screen/widgets/Second_Container_Wedgits.dart';
import 'package:project_3/screen/widgets/container_custem_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // App bar title and actions
        leading: Image(
          image: AssetImage('assets/Group 46.png'),
        ),
        title: Text(
          'PLANTIFY',
          style: GoogleFonts.philosopher(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xff002140),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage('assets/Group 153.png'),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage('assets/Menu.png'),
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // First custom widget
              Center(
                child: FirstCustmWedgits(),
              ),
              SizedBox(
                height: 10,
              ),
              // Search bar
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    width: 281,
                    height: 46,
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: ' Search',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xff002140),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Color(0xff002140),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('assets/Group 49.png'),
                    ),
                  ),
                ],
              ),
              // Tab bar
              DefaultTabController(
                length: 3,
                child: Container(
                  child: TabBar(
                    padding:
                        EdgeInsets.only(left: 30, bottom: 20, right: 100),
                    indicatorWeight: 0.5,
                    indicatorPadding:
                        EdgeInsets.only(left: 1, right: 30),
                    dividerColor: Color(0xffFFFFFF),
                    labelColor: Color(0xff0D986A),
                    indicatorColor: Color(0xff0D986A),
                    tabs: [
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Tab(
                          text: 'All plants',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Tab(
                          text: 'Indoor',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(1),
                        child: Tab(
                          text: 'Outdoor',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // List of custom container widgets
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    // Custom container widgets
                    ContainerCustmWidgets(
                      imagePath: 'assets/Peperomia Obtusfolia.png',
                      title: 'Peperomia',
                      subtitle: 'Air Purifier',
                      price: 400,
                      containerColor: Color(0xffB0EAD5),
                      onTapCard: () {},
                    ),
                    ContainerCustmWidgets(
                      imagePath: 'assets/sage.png',
                      title: 'Watermelon',
                      subtitle: 'Air Purifier',
                      price: 350,
                      containerColor: Color(0xffFFF3CC),
                    ),
                    SecondContainerWedgits(),
                    ContainerCustmWidgets(
                      imagePath: 'assets/interior medium light.png',
                      title: 'Croton Petra',
                      subtitle: 'Air Purifier',
                      price: 200,
                      containerColor: Color(0xffABE8D3),
                    ),
                    ContainerCustmWidgets(
                      imagePath: 'assets/Layer 8.png',
                      title: 'Bird’s Nest Fern',
                      subtitle: 'Air Purifier',
                      price: 160,
                      containerColor: Color(0xffC1E8A4),
                    ),
                    // Container with text
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 60,
                            width: 315,
                            child: Text(
                              'Caring for plants should be fun. That’s why we offer 1-on-1 virtual consultations from the comfort of your home or office.',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff333333), fontSize: 13),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 45,
                            child: Text(
                              'Learn More',
                              style: GoogleFonts.poppins(
                                  color: Color(0xff0D986A),
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 120,
                            child: Container(
                              height: 1,
                              width: 36,
                              color: Color(0xff0D986A),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ContainerCustmWidgets(
                      imagePath: 'assets/Mask Group.png',
                      title: 'Cactus',
                      subtitle: 'AIR PURIFIER',
                      price: 260,
                      containerColor: Color(0xffE5F0A1),
                    ),
                    ContainerCustmWidgets(
                      imagePath: 'assets/Layer 27.png',
                      title: 'Aloe Vera',
                      subtitle: 'AIR PURIFIER',
                      price: 210,
                      containerColor: Color(0xffF5EDA8),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // Text with decorative lines
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 3,
                            width: 36,
                            color: Color(0xff002140),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Plant a Life',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 33, 64, 1),
                                      fontSize: 36,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Live amongst Living',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 33, 64, 0.8),
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Spread the joy',
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(0, 33, 64, 0.5),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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