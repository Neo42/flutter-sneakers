import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeList = [
    Shoe(
      name: "KD 16 By You",
      price: '250',
      description:
          "Kevin Durant's bag? Bottomless. His range? Limitless. Your customisation choices for the KD16 By You?",
      imagePath: 'lib/images/kd-by-you.webp',
    ),
    Shoe(
      name: "KD 16",
      price: '220',
      description: "Kevin Durant's bag? Bottomless. His range? Limitless.",
      imagePath: 'lib/images/kd.webp',
    ),
    Shoe(
      name: "Freak 4",
      price: '180',
      description:
          "Giannis is an incessant storm of stamina and skill that keeps coming at opponents for 4 quarters or more.",
      imagePath: 'lib/images/freak.webp',
    ),
    Shoe(
      name: "LeBron Witness 7",
      price: '150',
      description:
          "The longer LeBron's legendary career continues, the more his game needs a design that doesn't weigh him down yet can still control all that sublime power.",
      imagePath: 'lib/images/witness.webp',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeList;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding shoes to cart
  void addShoesToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove shoes from cart
  void removeShoesFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
