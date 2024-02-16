import 'package:flutter/material.dart';
import 'package:plantify/utils/colors.dart';

class HomeTabBar extends StatelessWidget {
  const HomeTabBar({
    super.key, required this.tabs, this.controller, this.onTap,
  });

  final List<Widget> tabs;
  final TabController? controller;
  final void Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: TabBar(
        onTap: onTap,
        tabs: tabs,
      controller: controller,
      dividerColor: designColors[4],
      tabAlignment: TabAlignment.start,
      indicator: UnderlineTabIndicator(borderSide: BorderSide(color: designColors[2], width: 2,), insets: const EdgeInsets.only(right: 30),),
      isScrollable: true,
      labelStyle: TextStyle(color: designColors[2], fontWeight: FontWeight.bold, fontSize: 14),
      unselectedLabelStyle: TextStyle(color: designColors[6], fontWeight: FontWeight.normal, fontSize: 14),),
    );
  }
}
