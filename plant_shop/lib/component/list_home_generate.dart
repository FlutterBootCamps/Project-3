import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plant_shop/component/ad_invite.dart';
import 'package:plant_shop/database/get_it.dart';

import '../helper/list_colors.dart';
import 'item_card.dart';

List<Widget> generateItemList(bool ishorizontal) {
  return List.generate(
    GetIt.I.get<HomeData>().allPlant.length,
    (index) {
      Widget itemCard = ItemCard(
        color: listColor.elementAt(index),
        plant: GetIt.I.get<HomeData>().allPlant.elementAt(index),
      );
      
      if ((index % 2 == 0 && ishorizontal) ) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            itemCard,
            AdInvite(),
          ],
        );
      } else {
        return itemCard;
      }
    },
  );
}
