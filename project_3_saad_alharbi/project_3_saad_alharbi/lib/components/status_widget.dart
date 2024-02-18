import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  StatusWidget({
    super.key,
    required this.icon,
    required this.rate,
    required this.type,
  });
  final IconData icon;
  final String rate;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100,
        child: Row(
          children: [
            Icon(icon, color: const Color(0xffFCCC1F)),const SizedBox(width: 10,),
            Column(
              children: [
                Text(
                  rate,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0D986A)),
                ),
                Text(
                  type,
                  style: TextStyle(
                      color: const Color(0xff002140).withOpacity(0.6), fontSize: 12),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
