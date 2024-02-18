
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project_3_saad_alharbi/components/product_container.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';
import 'package:project_3_saad_alharbi/helper/extensions/screen_handler.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:project_3_saad_alharbi/model/plant_model.dart';
import 'package:project_3_saad_alharbi/screen/cart_screen.dart';

import '../components/status_widget.dart';

class PlantDetailsScreen extends StatefulWidget {
  PlantDetailsScreen({super.key, required this.index});
  final int index;

  @override
  State<PlantDetailsScreen> createState() => _PlantDetailsScreenState();
}

class _PlantDetailsScreenState extends State<PlantDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    PlantModel plant = GetIt.I.get<PlantData>().plants[widget.index];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9CE5CB),
        leading: Image.asset("images/app_logo.png"),
        title: const Text(
          "PLANTIFY",
          style: TextStyle(
              fontFamily: 'Philosopher',
              fontSize: 20,
              letterSpacing: 2,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search, size: 30),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.menu, size: 30)
                ]),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                height: context.getWidth() * 0.90,
                decoration: const BoxDecoration(
                  color: Color(0xff9CE5CB),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Air Purifier",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        Container(
                          width: 70,
                          height: 25,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xff0D986A),
                                ),
                                Text(
                                  '${plant.rating}',
                                  style: const TextStyle(
                                      color: Color(0xff0D986A),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ]),
                        ),
                      ],
                    ),
                    Text(
                      "${plant.name}",
                      style: const TextStyle(
                          fontSize: 38,
                          fontFamily: 'Philosopher',
                          fontWeight: FontWeight.w700,
                          color: Color(0xff002140)),
                    ),
                    Container(
                      width: context.getWidth(),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "price",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff002140)
                                        .withOpacity(0.6)),
                              ),
                              Text(
                                "\$${plant.price}",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff002140)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "size",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff002140)
                                        .withOpacity(0.6)),
                              ),
                              Text("${plant.size}",
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff002140))),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: IconButton(
                                      onPressed: () {
                                        if (GetIt.I.get<PlantData>().cart.contains(widget.index)) {
                                          return;
                                        }
                                        GetIt.I
                                            .get<PlantData>()
                                            .cart
                                            .add(widget.index);
                                        GetIt.I.get<PlantData>().setData();
                                        setState(() {});
                                      },
                                      icon: const Icon(
                                        Icons.shopping_bag,
                                        size: 50,
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    alignment: Alignment.center,
                                    onPressed: () {
                                      List<int> favoriteList =
                                          GetIt.I.get<PlantData>().favorite;
                                      if (!favoriteList
                                          .contains(widget.index)) {
                                        favoriteList.add(widget.index);
                                      } else {
                                        favoriteList.remove(widget.index);
                                      }
                                      GetIt.I.get<PlantData>().setData();
                                      setState(() {});
                                    },
                                    icon: Icon(
                                      GetIt.I
                                              .get<PlantData>()
                                              .favorite
                                              .contains(widget.index)
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      size: 50,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                              width: 150,
                              child: Image.asset(
                                "${plant.imagepath}",
                                fit: BoxFit.contain,
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                width: context.getWidth(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Overview",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StatusWidget(
                          icon: Icons.water_drop_outlined,
                          rate: '${plant.water}ml',
                          type: 'Water',
                        ),
                        StatusWidget(
                          icon: Icons.wb_sunny_outlined,
                          rate: '${plant.light}%',
                          type: 'Light',
                        ),
                        StatusWidget(
                          icon: Icons.scatter_plot_outlined,
                          rate: '${plant.fertilizer}gm',
                          type: 'Fertilizer',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                height: context.getWidth() * 0.70,
                child: ListView(
                  children: [
                    const Text(
                      "Plant Bio",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff002140)),
                    ),
                    Text(
                      "No green thumb required to keep our artificial watermelon peperomia plant looking lively and lush anywhere you place it.",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff002140).withOpacity(0.6)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: context.getWidth(),
                      height: context.getWidth() * 0.30,
                      child: Swiper(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int builderIndex) {
                          return SizedBox(
                            width: 100,
                            child: Image.asset(
                              'images/slider_img$builderIndex.png',
                              fit: BoxFit.contain,
                            ),
                          );
                        },
                        autoplay: true,
                        autoplayDelay: 3000,
          
                        pagination: const SwiperPagination(
                            alignment: Alignment
                                .bottomCenter), 
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Similar Plants",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff002140)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [

                            ProductContainer(
                              color: Color(0xffB0EAD5),
                              name: 'Peperomia',
                              type: 'Air Purifier',
                              price: '400',
                              imagePath: 'images/Peperomia.png',
                              index: 0,
                            ),
                            ProductContainer(
                              color: Color(0xffF5EDA8),
                              name: 'Cactus',
                              type: 'Air Purifier',
                              price: '150',
                              imagePath: 'images/Cactus.png',
                              index: 0,
                            ),
                            ProductContainer(
                              color: Color(0xffE5F0A1),
                              name: 'Birds Nest Fern',
                              type: 'Air Purifier',
                              price: '250',
                              imagePath: 'images/BirdsNestFern.png',
                              index: 0,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: context.getWidth(),
                      height: context.getHeight() * 0.25,
                      color: const Color(0xffF5EDA8),
                      child: Stack(
                        children: [
                          Positioned(
                            right: 25,
                            bottom: 45,
                            child: SizedBox(
                              width: 150,
                              child: Image.asset(
                                "images/AIScan_img.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 50,
                            left: 20,
                            child: SizedBox(
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "That very plant?",
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontFamily: 'Philosopher',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Just Scan and the AI will know exactly",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff002140)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 50,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(
                                  "Scan Now ",
                                  style: TextStyle(
                                      color: Color(0xff0D986A),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                )),
                          )
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
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          color: const Color(0xff0B845C),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
              onPressed: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: const CartScreen()));

              },
              icon: const Icon(Icons.shopping_bag_outlined,
                  color: Colors.white, size: 50),
            ),
            Text(
              "View ${GetIt.I.get<PlantData>().cart.length} items",
              style: TextStyle(
                  color:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              width: 20,
            ),
             Text(
              "\$${GetIt.I.get<PlantData>().getTotal().toStringAsFixed(2)}",
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            )
          ]),
        ),
      ),
    );
  }

  
}
