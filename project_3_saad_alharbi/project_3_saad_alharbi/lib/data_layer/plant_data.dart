import 'package:project_3_saad_alharbi/data/dataset.dart';
import 'package:project_3_saad_alharbi/model/plant_model.dart';
import 'package:get_storage/get_storage.dart';

class PlantData {
  List<PlantModel> plants = [];
  List<int> favorite = [];
  List<int> cart = [];
  List<int> saved = [];

  final box = GetStorage('plant');

  PlantData() {
    getAllPlant();
    loadData();
  }

  getAllPlant() {
    plantsData.map((e) => plants.add(PlantModel.fromJson(e))).toList();
  }

  loadData() {
    if (box.read('favorite') == null) {
      return;
    }
    favorite = PlantModel.fromDynamic(box.read('favorite'));
    if (box.read('cart') == null) {
      return;
    }
    cart = PlantModel.fromDynamic(box.read('cart'));
    if (box.read('saved') == null) {
      return;
    }
    saved = PlantModel.fromDynamic(box.read('saved'));
  }

  setData() {
    box.write('favorite', PlantModel.toDynamic(favorite));
    box.write('cart', PlantModel.toDynamic(cart));
    box.write('saved', PlantModel.toDynamic(saved));
  }

  double getTotal() {
    double total = 0.0;
    for (var i = 0; i < cart.length; i++) {
      total+=plants[cart[i]].price!;
    }
    return total;
  }


}
