import 'package:flutter/material.dart';

class RoundyButton extends StatefulWidget {
  const RoundyButton({
    super.key,
    required this.icon,
    required this.color,
    required this.onTap,
    this.boxShadow,
    this.border, this.width = 54, this.height = 54, required this.notifyParent,
  });

  final String icon;
  final Color color;
  final Function() onTap;
  final List<BoxShadow>? boxShadow;
  final BoxBorder? border;
  final double? width;
  final double? height;
  final Function() notifyParent;

  @override
  State<RoundyButton> createState() => _RoundyButtonState();
}

class _RoundyButtonState extends State<RoundyButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.onTap();
        widget.notifyParent();
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
            color: widget.color,
            borderRadius: const BorderRadius.all(Radius.elliptical(20, 30)),
            boxShadow: widget.boxShadow,
            border: widget.border),
        child: Image.asset(widget.icon),
      ),
    );
  }
}
