import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class DeliveryContainer extends StatelessWidget {
  const DeliveryContainer({
    super.key,
    required this.indicatorValue,
  });
  final double indicatorValue;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303,
      height: 59,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: designColors[22],
            child: Image.asset("assets/icons/truck.png"),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 152,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                          color: designColors[6],
                          fontFamily: "Philosopher",
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: 86,
                        child: LinearProgressIndicator(
                          minHeight: 4,
                          backgroundColor: designColors[23],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(2)),
                          color: designColors[2],
                          value: indicatorValue,
                        ))
                  ],
                ),
              ),
              SizedBox(
                  width: 198,
                  child: RichText(
                      text: TextSpan(
                          text: "Order above ₹1200 to get free delivery ",
                          style: TextStyle(
                              color: designColors[6],
                              fontFamily: "Poppins",
                              fontSize: 12),
                          children: [
                        TextSpan(
                            text: "Shop for more ₹190",
                            style: TextStyle(
                                color: designColors[2],
                                fontFamily: "Poppins",
                                fontSize: 12,
                                fontWeight: FontWeight.w500))
                      ])))
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            "\$80",
            style: TextStyle(
                color: designColors[6],
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
