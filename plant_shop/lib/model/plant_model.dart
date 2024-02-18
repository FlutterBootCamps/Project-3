import 'package:equatable/equatable.dart';

class PlantModel extends Equatable {
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
  final bool isFavorite;
  final bool isInBuyLate;
  final bool isInCart;
  late double quantity;

  PlantModel({
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
    this.isFavorite = false,
    this.isInBuyLate = false,
    this.isInCart = false,
    this.quantity = 0,
  });

  factory PlantModel.fromJson(Map<String, dynamic> json) {
    return PlantModel(
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
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    data['image_path'] = this.imagePath;
    data['type'] = this.type;
    data['size'] = this.size;
    data['description'] = this.description;
    data['water'] = this.water;
    data['light'] = this.light;
    data['fertilizer'] = this.fertilizer;
    data['rating'] = this.rating;
    return data;
  }

  @override
  List<Object?> get props => [name];
}
