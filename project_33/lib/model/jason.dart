class Plant {
  final String name;
  final double price;
  final String imagePath;
  final String type;
  final String size;
  final String description;
  final int water;
  final int light;
  final int fertilizer;
  final double rating;

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
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      name: json['name'] as String,
      price: json['price'] as double,
      imagePath: json['image_path'] as String,
      type: json['type'] as String,
      size: json['size'] as String,
      description: json['description'] as String,
      water: json['water'] as int,
      light: json['light'] as int,
      fertilizer: json['fertilizer'] as int,
      rating: json['rating'] as double,
    );
  }
}