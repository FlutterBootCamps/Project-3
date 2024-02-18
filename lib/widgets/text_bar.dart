import 'package:flutter/material.dart';
import 'package:plantify/helpers/extensions/screen_helper.dart';
import 'package:plantify/utils/colors.dart';

class TextBar extends StatelessWidget {
  const TextBar({
    super.key,
    required this.labelText,
    required this.icon,
    required this.hintText,
    required this.onTap,
    required this.notifyParent,
    required this.controller,
  });

  final String labelText;
  final String hintText;
  final String icon;
  final Function() onTap;
  final Function() notifyParent;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth(context) * .78,
      height: 46,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          constraints: const BoxConstraints(minWidth: 238),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: () {
                  onTap();
                  notifyParent();
                },
                icon: Image.asset(icon),
              )),
          label: Text(
            labelText,
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: designColors[6]),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w500),
          focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              borderSide: BorderSide(color: designColors[6])),
          enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(14)),
              borderSide: BorderSide(color: designColors[6])),
        ),
      ),
    );
  }
}
