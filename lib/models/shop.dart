import 'package:flutter/material.dart';
import 'package:flutter_application_6/models/food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // salmon sushi
    Food(
      name: "Jordans",
      price: "3000 Rs",
      imagePath: "lib/images/jordan.png",
      rating: "4.2",
    ),

    Food(
      name: "Sneakers",
      price: "3500 Rs",
      imagePath: "lib/images/sneaker.png",
      rating: "4.9",
    ),


    // tuna
    Food(
      name: "Nikes",
      price: "4000 Rs",
      imagePath: "lib/images/Nikes.png",
      rating: "5",
    ),

    // tuna
    Food(
      name: "Crocks",
      price: "4500 rs",
      imagePath: "lib/images/crocks.png",
      rating: "4.5",
    ),

    Food(
      name: "Joggers",
      price: "5000 Rs",
      imagePath: "lib/images/joggers.png",
      rating: "4.4",
    ),

    Food(
      name: "Yeezees",
      price: "20000 Rs",
      imagePath: "lib/images/yeezees.png",
      rating: "4.3",
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
