class Plant {
  final String name;
  final double price;
  final String image;
  final String type;
  final String size;
  final String description;
  final double water;
  final double light;
  final double fertilizer;
  final double rating;
  bool isFavorite;

  Plant({
    required this.name,
    required this.price,
    required this.image,
    required this.type,
    required this.size,
    required this.description,
    required this.water,
    required this.light,
    required this.fertilizer,
    required this.rating,
    this.isFavorite = false,
  });

  factory Plant.fromJson(Map json) {
    return Plant(
      name: json['name'],
      price: double.parse(json["price"].toString()),
      image: json['image_path'] ?? "images/Peperomia Obtusfolia.png",
      type: json['type'],
      size: json['size'],
      description: json['description'],
      water: double.parse(json["water"].toString()),
      light: double.parse(json["light"].toString()),
      fertilizer: double.parse(json["fertilizer"].toString()),
      rating: double.parse(json["rating"].toString()),
    );
  }
}