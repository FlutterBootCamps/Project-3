import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:plantify/data%20layer/home_data.dart';
import 'package:plantify/models/Plant_model.dart';
import 'package:plantify/utils/colors.dart';

class BasketPlantContainer extends StatefulWidget {
  const BasketPlantContainer({
    super.key,
    required this.plant,
    required this.notfiyParent,
  });
  final Plant plant;
  final Function() notfiyParent;

  @override
  State<BasketPlantContainer> createState() => _BasketPlantContainerState();
}

class _BasketPlantContainerState extends State<BasketPlantContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
        width: 316,
        height: 73.74,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 40,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SvgPicture.asset(
                    "assets/images/favorite_plant_bg.svg",
                    colorFilter: ColorFilter.mode(
                        Color(int.parse(widget.plant.color)), BlendMode.srcIn),
                  ),
                  Positioned(
                      bottom: -5,
                      right: 0,
                      child: Image.asset(
                        widget.plant.imagePath,
                        scale: 2.5,
                      )),
                ],
              ),
            ),
            SizedBox(
              width: 165,
              height: 69,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.plant.name,
                    style: TextStyle(
                        color: designColors[6],
                        fontFamily: "Philosopher",
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 74,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                GetIt.I
                                    .get<HomeData>()
                                    .increasePlantQuantity(widget.plant);
                                widget.notfiyParent();
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    border: Border.all(
                                      color: designColors[6],
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignInside,
                                    )),
                                child: Image.asset("assets/icons/plus.png"),
                              ),
                            ),
                            Text(
                              "${widget.plant.quantity}",
                              style: TextStyle(
                                  color: designColors[2],
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            InkWell(
                              onTap: () {
                                GetIt.I
                                    .get<HomeData>()
                                    .decreasePlantQuantity(widget.plant);
                                widget.notfiyParent();
                              },
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(6)),
                                    border: Border.all(
                                      color: designColors[6],
                                      width: 1,
                                      strokeAlign: BorderSide.strokeAlignInside,
                                    )),
                                child: Image.asset("assets/icons/minus.png"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 29,
                      ),
                      IconButton(
                          onPressed: () {
                            GetIt.I
                                .get<HomeData>()
                                .removeFromBasket(widget.plant);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                  "${widget.plant.name} has been removed from basket"),
                              backgroundColor: designColors[24],
                            ));
                            widget.notfiyParent();
                          },
                          icon: Image.asset("assets/icons/trash.png"))
                    ],
                  )
                ],
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(GetIt.I
                              .get<HomeData>()
                              .moveToFromSaved(widget.plant)),
                          backgroundColor: designColors[2],
                        ));
                        widget.notfiyParent();
                      },
                      icon: Image.asset((widget.plant.isSaved)
                          ? "assets/icons/bookmark_filled.png"
                          : "assets/icons/bookmark_empty.png")),
                )),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "\$${widget.plant.price}",
                    style: TextStyle(
                        color: designColors[6],
                        fontFamily: "Poppins",
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
