import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_2/data%20layer/data_palnt.dart';

Future<void> setup() async {
  await GetStorage.init();

  GetIt.instance.registerSingleton<PlantData>(PlantData());
}