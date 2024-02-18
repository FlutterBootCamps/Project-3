import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_3_alaa/data_layer/plants_data.dart';

Future<void> setup() async {
  await GetStorage.init();

  GetIt.instance;
  GetIt.I.registerSingleton<PlantDataLayer>(PlantDataLayer());
}