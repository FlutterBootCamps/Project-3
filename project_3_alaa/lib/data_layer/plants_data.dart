import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:project_3_alaa/dataset/plants_data.dart';
import 'package:project_3_alaa/model/plants_model.dart';

class PlantDataLayer {
  List<Plants> allPlants = [];  
  List<Plants> allIndoorPlants = [];
  List<Plants> allOutdoorPlants = [];
  List<Plants> favoritePlant = [];
  List<Plants> cartPlant = [];
  List<Plants> markPlant = [];
  double sum = 0;
  

  final box = GetStorage();

  PlantDataLayer(){
    displayAllPlants();
    displayCartPlant();
    displayFavoritePlant();
    displayMarkPlant();
    
  }

// All Plant
  displayAllPlants(){
    plantsData.map((item){
      allPlants.add(Plants.fromJson(item));
    }).toList();
  }

  //indoor Plant
  indoorPlant (){
    plantsData.map((item){
      if(item['type'] == "Indoor Plant"){
      allIndoorPlants.add(Plants.fromJson(item));
      }
    }).toList();
  }

  // outdoor plant 
  outdoorPlant (){
    plantsData.map((item){
      if(item['type'] == "outdoor Plant"){
      allOutdoorPlants.add(Plants.fromJson(item));
      }
    }).toList();
  }
  
//  Cart Plants
  addPlantToCart({required Plants cPlant}) async{
    cartPlant.add(cPlant);

    List encoded = [];
    for(var element in cartPlant){
      encoded.add(element.toJson());
    }

    await box.write("cartPlant", jsonEncode(encoded));
    // print(encoded);
  }


  displayCartPlant() async {
    if (box.hasData("cartPlant")){
      final cart = jsonDecode(box.read("cartPlant"));

      for (var element in cart){
        cartPlant.add(Plants.fromJson(element));
      }
    }     
  }

  totalPrice(){

    // List.generate(cartPlant.length,
        // (index) => sum += Plants.fromJson(cartPlant[index])));
    for( var  i in cartPlant) {
      sum += i.price ;
    }
    // print(sum);
    return sum;
    // .toString();
  }

  deletePlant({required Plants  plant}) async {
    List deleteItem = [];
    for(var element in cartPlant){
      if (element.name == plant.name){
      deleteItem.add(element.toJson());
    };
    }

    await box.remove("cartPlant");
    
  }
  deleteMarkPlant({required Plants  plant}) async {
    List deleteItem = [];
    for(var element in markPlant){
      if (element.name == plant.name){
      deleteItem.add(element.toJson());
    };
    }

    await box.remove("markPlant");
    
  }



  // Mark plant
  addPlantToMark({required Plants mPlant}) async{
    markPlant.add(mPlant);

    List encoded = [];
    for(var element in markPlant){
      encoded.add(element.toJson());
    }

    await box.write("markPlant", jsonEncode(encoded));
  }


  displayMarkPlant() async {
    if (box.hasData("markPlant")){
      final mark = jsonDecode(box.read("markPlant"));

      for (var element in mark){
        markPlant.add(Plants.fromJson(element));
      }
    }     
  }

//  Favorite Plants
  addFavoritePlant({required Plants fPlant}) async{
    favoritePlant.add(fPlant);

    List convert = [];
    for(var element in favoritePlant){
      convert.add(element);
    }
    await box.write("favoritePlant", jsonEncode(convert));
  }


  displayFavoritePlant() async {
    if (box.hasData("favoritePlant")){
      final favorite = jsonDecode(box.read("favoritePlant"));

      for (var element in favorite){
        favoritePlant.add(Plants.fromJson(element));
      }
    }     
  }

}