import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_shop/database/get_it.dart';

Future<void> setup() async {
  GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  GetIt.instance;
  GetIt.I.registerLazySingleton(()=> HomeData());
}
