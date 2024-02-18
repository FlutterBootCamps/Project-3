import 'package:project3_plants_maram/models/plant_model.dart';

class CartContrller {
  List<Plant> cartList = [];

  addCart(Plant plant) {
    if (cartList.contains(plant)) {
      return;
    }
    plant.quantity = 1;
    cartList.add(plant);
  }

  deleteCart(Plant plant) {
    plant.quantity = 0;
    cartList.remove(plant);
  }

  plusItem(Plant plant) {
    plant.quantity++;
  }

  minusItem(Plant plant) {
    if (plant.quantity > 1) {
      plant.quantity--;
    }
  }

  String computeTotal() {
    double total = 0;

    for (Plant plant in cartList) {
      total += plant.price * plant.quantity;
    }
    return total.toString();
  }
}
