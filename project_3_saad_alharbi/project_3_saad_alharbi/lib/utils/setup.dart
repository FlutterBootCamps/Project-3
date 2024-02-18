import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_3_saad_alharbi/data_layer/plant_data.dart';

Future<void> setup() async {
  await GetStorage.init('plant');

  GetIt.instance;
  GetIt.I.registerSingleton<PlantData>(PlantData());
}
