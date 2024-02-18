class Plant {
  Plant({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.type,
    required this.size,
    required this.description,
    required this.water,
    required this.light,
    required this.fertilizer,
    required this.rating,
    required this.color,
    required this.quantity,
    required this.isSaved,
  });
  late final String name;
  late final double price;
  late final String imagePath;
  late final String type;
  late final String size;
  late final String description;
  late final int water;
  late final int light;
  late final int fertilizer;
  late final double rating;
  late final String color;
  int quantity;
  bool isSaved;

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
        name: json['name'],
        price: json['price'],
        imagePath: json['image_path'],
        type: json['type'],
        size: json['size'],
        description: json['description'],
        water: json['water'],
        light: json['light'],
        fertilizer: json['fertilizer'],
        rating: json['rating'],
        color: json['color'],
        quantity: json['quantity'],
        isSaved: json['isSaved']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['price'] = price;
    _data['image_path'] = imagePath;
    _data['type'] = type;
    _data['size'] = size;
    _data['description'] = description;
    _data['water'] = water;
    _data['light'] = light;
    _data['fertilizer'] = fertilizer;
    _data['rating'] = rating;
    _data['color'] = color;
    _data['quantity'] = quantity;
    _data['isSaved'] = isSaved;
    return _data;
  }
}
