
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plantify/data%20layer/home_data.dart';

Future<void> setup() async{
await GetStorage.init();

GetIt.I.registerSingleton<HomeData>(HomeData());

}