import 'package:flutter/material.dart';
import 'package:project_2/model/favorite.dart';
import 'package:get_it/get_it.dart';

class FavoriteScreen extends StatelessWidget {
  //-- use git to reach the data 
  final FavoriteService _favoriteService = GetIt.I<FavoriteService>();

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: _favoriteService.favoritePlants.length,
        itemBuilder: (context, index) {
          final plant = _favoriteService.favoritePlants[index];
          return ListTile(
            title: Text(plant['name']),
            subtitle: Text('\$${plant['price']}'),
            leading: Image.asset(
              plant['image_path'],
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
            trailing: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                _favoriteService.removeFromFavorites(plant); 
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${plant['name']} removed from favorites'),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
