import 'package:get_it/get_it.dart';
import 'package:project3_plants_maram/controller/cart_controller.dart';
import 'package:project3_plants_maram/controller/plant_controller.dart';
import 'package:project3_plants_maram/data/plant_data.dart';
import 'package:shared_preferences/shared_preferences.dart';


SharedPreferences? prefs;
Future<void> setup() async {
  prefs = await SharedPreferences.getInstance();
  GetIt.instance;
  GetIt.I.registerSingleton<PlantContrller>(PlantContrller());
  GetIt.I.registerSingleton<CartContrller>(CartContrller());
}
