import 'dart:convert';

import 'package:get_storage/get_storage.dart';

import 'plants_data.dart';
import '../model/plant_model.dart';

class HomeData {
  List<PlantModel> allPlant = [];

  List<PlantModel> carts = [];

  List<PlantModel> favorite = [];

  List<PlantModel> buyLater = [];

  final box = GetStorage();

  HomeData() {
    getAllPlant();
    loadCart();
    loadBuylater();
    loadFavorite();
  }

///////////cart methods
  ///
  addItemCart({required PlantModel item}) async {
    loadCart();
    if (carts.contains(item)) {
      print(carts.length);
      item.quantity++;
    } else {
      carts.add(item);
      item.quantity++;
    }
    List encodableList = [];
    for (var element in carts) {
      encodableList.add(element.toMap());
    }

    await box.write("carts", jsonEncode(encodableList));
  }

  removeItemCart({required PlantModel item}) async {
    loadCart();
    if (carts.contains(item)) {
      carts.remove(item);
    }
    List encodableList = [];
    for (var element in carts) {
      encodableList.add(element.toMap());
    }

    await box.write("carts", jsonEncode(encodableList));
  }

  decresQuntity({required PlantModel item}) async {
    loadCart();
    if (carts.contains(item)) {
      item.quantity--;
    }
    List encodableList = [];
    for (var element in carts) {
      encodableList.add(element.toMap());
    }
    await box.write("carts", jsonEncode(encodableList));
  }

  loadCart() async {
    if (box.hasData('cart')) {
      final xList = jsonDecode(box.read("cart"));
      //favorite.clear();
      for (var element in xList) {
        carts.add(PlantModel.fromJson(element));
      }
    }
  }

///////////buy later methods

  toggleItemBuylater({required PlantModel item}) async {
    loadBuylater();
    if (buyLater.contains(item)) {
      buyLater.remove(item);
    } else {
      buyLater.add(item);
    }
    List encodableList = [];
    for (var element in buyLater) {
      encodableList.add(element.toMap());
    }

    await box.write("buyLater", jsonEncode(encodableList));
  }

  loadBuylater() async {
    if (box.hasData('buyLater')) {
      final xList = jsonDecode(box.read("buyLater"));
      favorite.clear();
      for (var element in xList) {
        favorite.add(PlantModel.fromJson(element));
      }
    }
  }

///////////favorite

  toggleItemFavorite({required PlantModel item}) async {
    loadFavorite();
    if (favorite.contains(item)) {
      favorite.remove(item);
    } else {
      favorite.add(item);
    }
    List encodableList = [];
    for (var element in favorite) {
      encodableList.add(element.toMap());
    }

    await box.write("favorite", jsonEncode(encodableList));
  }

  loadFavorite() async {
    if (box.hasData('favorite')) {
      final xList = jsonDecode(box.read("favorite"));
      favorite.clear();
      for (var element in xList) {
        favorite.add(PlantModel.fromJson(element));
      }
    }
  }

  getAllPlant() {
    loadFavorite();

    plantsData.map((item) {
      var c = PlantModel.fromJson(item);
      allPlant.add(c);
    }).toList();
  }
}
