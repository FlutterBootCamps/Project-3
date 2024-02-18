class Plant{
final String name;
final double price;
final List<String> images;
final String type;
final String size;
final String description;
final int water;
final int light;
final int fertilizer;
final double rating;

// Constructor for the Plant class
  Plant({
    required this.name,
    required this.price,
    required this.images,
    required this.type,
    required this.size,
    required this.description,
    required this.water,
    required this.light,
    required this.fertilizer,
    required this.rating,
  });

  // Factory method to create a Plant object from JSON data
  factory Plant.fromJson(Map json) {
    return Plant(
      name: json["name"],
      price: double.parse(json["price"].toString()),
      images: json["images"] as List<String>,
      type: json["type"],
      size: json["size"],
      description: json["description"],
      water: json["water"],
      light: json["light"],
      fertilizer: json["fertilizer"],
      rating: double.parse(json["rating"].toString()),
    );
  }

  // Method to convert Plant object to a Map
  Map<String, dynamic> toMap() {
    return {
      "name": name,
      "price": price,
      "images": images,
      "type": type,
      "size": size,
      "description": description,
      "water": water,
      "light": light,
      "fertilizer": fertilizer,
      "rating": rating,
    };
  }
}