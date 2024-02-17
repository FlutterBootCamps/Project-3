import 'package:flutter/material.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/screens/basket_screen.dart';
import 'package:plantify/utils/colors.dart';

class CheckoutBar extends StatefulWidget {
  const CheckoutBar({
    super.key,
    required this.noOfPlants,
    required this.totalPrice,
    required this.isEnabled,
  });
  final int noOfPlants;
  final double totalPrice;
  final bool isEnabled;

  @override
  State<CheckoutBar> createState() => _CheckoutBarState();
}

class _CheckoutBarState extends State<CheckoutBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.isEnabled)
          ? () {
              context.push(
                context,
                const BasketScreen(),
              ).then((_) {
                setState(() {
                });
              });
            }
          : null,
      child: Container(
        width: context.getWidth(context),
        height: 56,
        padding: const EdgeInsets.symmetric(horizontal: 36),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [designColors[19], designColors[20]]),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                  color: designColors[14],
                  offset: const Offset(0, -2),
                  blurRadius: 4),
              BoxShadow(
                  color: designColors[14],
                  offset: const Offset(0, -8),
                  blurRadius: 18)
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 125.28,
              child: (widget.isEnabled)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/basket_white.png"),
                        Text(
                          "View ${widget.noOfPlants} items",
                          style: TextStyle(
                              color: designColors[21],
                              fontFamily: "Poppins",
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  : Text(
                      "Checkout",
                      style: TextStyle(
                          color: designColors[1],
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
            ),
            Text(
              "\$${widget.totalPrice}",
              style: TextStyle(
                  color: designColors[1],
                  fontFamily: "Poppins",
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
