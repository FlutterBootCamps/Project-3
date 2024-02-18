class Plant {
  final String name;
  final double price;
  final String image_path;
  final String type;
  final String size;
  final String description;
  final int water;
  final int light;
  final int fertilizer;
  int quantity;
  final double rating;
  Plant({
    required this.name,
    required this.price,
    required this.image_path,
    required this.type,
    required this.size,
    required this.description,
    required this.water,
    required this.light,
    required this.fertilizer,
    required this.rating,
    this.quantity = 0
  });

  factory Plant.fromJson(Map json) {
    return Plant(
      name: json['name'],
      price: json['price'],
      image_path: json['image_path'],
      type: json['type'],
      size: json['size'],
      description: json['description'],
      water: json['water'],
      light: json['light'],
      fertilizer: json['fertilizer'],
      rating: json['rating'],
    );
  }
  toMap() {
    return {
      'name': name,
      'price': price,
      'image_path': image_path,
      'type': type,
      'size': size,
      'description': description,
      'water': water,
      'light': light,
      'fertilizer': fertilizer,
      'rating': rating,
    };
  }
}
