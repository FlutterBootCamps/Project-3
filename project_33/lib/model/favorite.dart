class FavoriteService {
  List<Map<String, dynamic>> favoritePlants = [];

  void addToFavorites(Map<String, dynamic> plant) {
    favoritePlants.add(plant);
  }

  void removeFromFavorites(Map<String, dynamic> plant) {
    favoritePlants.remove(plant);
  }
}
