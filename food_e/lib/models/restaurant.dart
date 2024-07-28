import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_e/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Classic Cheeseburger",
      description:
          "A Juicy Chicken Patty With Melted Cheddar,Lettuce, Tomato & A Hint Of A Onion & Pickle.",
      imagePath: "lib/images/burgers/1.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ Sauce,crispy bacon & onion rings make this chicken burger a savory delight.",
      imagePath: "lib/images/burgers/2.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Jalapenos", price: 1.99),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A Juicy Chicken Patty With Melted Cheddar,Lettuce, Tomato & A Hint Of A Onion & Pickle.",
      imagePath: "lib/images/burgers/3.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A Juicy Chicken Patty With Melted Cheddar,Lettuce, Tomato & A Hint Of A Onion & Pickle.",
      imagePath: "lib/images/burgers/4.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A Juicy Chicken Patty With Melted Cheddar,Lettuce, Tomato & A Hint Of A Onion & Pickle.",
      imagePath: "lib/images/burgers/5.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Classic Cheeseburger",
      description:
          "A Juicy Chicken Patty With Melted Cheddar,Lettuce, Tomato & A Hint Of A Onion & Pickle.",
      imagePath: "lib/images/burgers/6.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/1.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/2.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/3.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/4.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/5.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Crisp roman lettuce, parmesan cheese,croutons & caesar dressing.",
      imagePath: "lib/images/salads/6.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Anchovies", price: 1.49),
        Addon(name: "Extra Parmesan", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/1.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/2.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/3.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/4.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/5.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Crispy sweet potato fries with a touch of salt",
      imagePath: "lib/images/sides/6.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese sauce", price: 0.99),
        Addon(name: "Traufle Oil", price: 1.49),
        Addon(name: "Cajun spice", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/1.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/2.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/3.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/4.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/5.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Chocolate Browny",
      description: "Rich & Fudgy chocolate Browny, With Chunks Of Chocolate.",
      imagePath: "lib/images/desserts/6.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Hot Fudge", price: 1.49),
        Addon(name: "Whipped Cream", price: 1.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/1.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/2.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/3.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/4.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/5.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
    Food(
      name: "Lemonade",
      description:
          "Refreshing lemonade made with real lemons and a touch of sweetness.",
      imagePath: "lib/images/drinks/6.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Mint Leaves", price: 1.99),
        Addon(name: "Ginger Zest", price: 2.99),
      ],
    ),
  ];
  final List<CartItem> _cart = [];

  String _deliveryAddress = "99 Hollywood Blv";

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != 1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's Your Receipt.");
    receipt.writeln();
    String formattedDate =
        DateFormat('yyyy-MM-dd HH-mm-ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity}*${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(" Add-ons:${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Deliveing To:$deliveryAddress");
    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
