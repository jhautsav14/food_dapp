import 'package:food_dapp/models/food.dart';

class Resturant {
  final List<Food> _menu= [
    Food(
      name: "Dosa", 
      description: "Made with Love", 
      imagePath: "assets/food/Dosa.jpg", 
      price: 45, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ghee", price: 10),
        Addon(name: "Butter", price: 20),
      ]),

    Food(
      name: "Idli", 
      description: "Made with Love", 
      imagePath: "assets/food/idli.jpg", 
      price: 35, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ghee", price: 10),
        Addon(name: "Butter", price: 20),
      ]),

    Food(
      name: "Samosa", 
      description: "Made with Love", 
      imagePath: "assets/food/samosa.jpg", 
      price: 35, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ghee", price: 10),
        Addon(name: "Butter", price: 20),
      ]),
  ];


  //---- GETTERS
  List<Food> get menu => _menu;


  // ----OPERATIONS
  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart

  // clear cart


  //---- HELPERS

  // generate a receipt

  // format double value into money

  //format list of addons into a string summary

}