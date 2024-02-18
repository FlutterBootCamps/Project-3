class PlantModel {
  String? name;
  double? price;
  String? imagepath;
  String? type;
  String? size;
  String? description;
  int? water;
  int? light;
  int? fertilizer;
  double? rating;

  PlantModel(
      {this.name,
      this.price,
      this.imagepath,
      this.type,
      this.size,
      this.description,
      this.water,
      this.light,
      this.fertilizer,
      this.rating,
      });

  PlantModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
    imagepath = json['image_path'];
    type = json['type'];
    size = json['size'];
    description = json['description'];
    water = json['water'];
    light = json['light'];
    fertilizer = json['fertilizer'];
    rating = json['rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = name;
    data['price'] = price;
    data['image_path'] = imagepath;
    data['type'] = type;
    data['size'] = size;
    data['description'] = description;
    data['water'] = water;
    data['light'] = light;
    data['fertilizer'] = fertilizer;
    data['rating'] = rating;
    return data;
  }

  static List<int> fromDynamic(List<dynamic> list) {
    List<int> plantList = [];
    for (var i = 0; i < list.length; i++) {
      plantList.add(list[i]) ;
    }
    return plantList;
  }

  static List<dynamic> toDynamic(List<int> list) {
    List<dynamic> plantList = [];
    for (var i = 0; i < list.length; i++) {
      plantList.add(list[i]);
    }

    return plantList;
  }
  
}
