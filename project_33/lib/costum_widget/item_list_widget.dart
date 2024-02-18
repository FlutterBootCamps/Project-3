import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:project_2/costum_widget/item_list_widget.dart';
import 'package:project_2/model/favorite.dart';


class ItemList extends StatefulWidget {
  final String name;
  final double price;
  final String imagePath;
  final VoidCallback? onFavoritePressed;

  const ItemList({
    Key? key,
    required this.name,
    required this.price,
    required this.imagePath,
    this.onFavoritePressed,
  }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  bool isFavorite = false;
  late FavoriteService _favoriteService;

  @override
  void initState() {
    super.initState();
    _favoriteService = GetIt.I<FavoriteService>();
  }

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
      if (isFavorite) {
        _favoriteService.addToFavorites({
          'name': widget.name,
          'price': widget.price,
          'image_path': widget.imagePath,
        });
      } else {
        _favoriteService.removeFromFavorites({
          'name': widget.name,
          'price': widget.price,
          'image_path': widget.imagePath,
        });
      }
    });
  }
    //custom list of widget based on dataset
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(  width: 400, height: 250,
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 95, 175, 137),
            borderRadius: BorderRadius.circular(20),
          ),
            child: Stack(
              children: [
               Positioned(    top: 60, left: 20, child: 
               Text(   'There’s a Plant',  style: TextStyle(  color: Colors.black,  fontSize: 15,   fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned( bottom: 130, left: 20,
                child: Text(
                  widget.name,
                  style: TextStyle(  color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned( bottom: 40, left: 50,
                child: Text(
                '\$${widget.price}',
                  style: TextStyle(   color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(   top: 20,right: 10,
                child: Container(
                  width: 100,  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),  fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 150,
                child: IconButton(
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Colors.red : null,
                  ),
                  onPressed: () {
                    toggleFavorite();
                    if (widget.onFavoritePressed != null) {
                      widget.onFavoritePressed!();
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
