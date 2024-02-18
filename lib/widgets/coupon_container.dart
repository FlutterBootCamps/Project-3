import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class CouponContainer extends StatelessWidget {
  const CouponContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 303,
      height: 59,
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: designColors[22],
            child: Image.asset("assets/icons/coupon.png"),
          ),
          const SizedBox(
            width: 22,
          ),
          Text(
            "Apply Coupon",
            style: TextStyle(
                color: designColors[6],
                fontFamily: "Philosopher",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 53,
          ),
          SizedBox(
            width: 121,
            height: 20,
            child: TextField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: designColors[2],
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignInside),
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: designColors[2],
                        width: 2,
                        strokeAlign: BorderSide.strokeAlignInside),
                    borderRadius: const BorderRadius.all(Radius.circular(14)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
