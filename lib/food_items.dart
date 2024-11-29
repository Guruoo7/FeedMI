import 'package:flutter/material.dart';

class FoodItems {
  String name, imageUrl;
  FoodItems({required this.name, required this.imageUrl});
}

class Restaurants {
  String imageUrl, title;

  Restaurants({required this.imageUrl, required this.title});
}

List<FoodItems> foodItemList = [
  FoodItems(
      name: "Broccoli",
      imageUrl:
          "https://www.pngkey.com/png/detail/440-4402560_broccoli-transparent-transparent-background-broccoli-png.png"),
  FoodItems(
      name: "Tomato",
      imageUrl:
          "https://www.seekpng.com/png/detail/153-1531464_tomatoes-png-transparent-background-tomatoes-png.png"),
  FoodItems(
      name: "ladyFinger",
      imageUrl:
          "https://i.pinimg.com/736x/db/91/59/db91592a06027cb17986d6e26e9a9a22.jpg"),
  FoodItems(
      name: "plantain Flower",
      imageUrl:
          "https://www.seekpng.com/png/detail/376-3769495_plantain-flower-banana.png"),
  FoodItems(
      name: "Cabbage",
      imageUrl:
          "https://www.pngitem.com/pimgs/m/131-1310587_cabbage-no-background-hd-png-download.png"),
  FoodItems(
      name: "Potato",
      imageUrl:
          "https://p.kindpng.com/picc/s/68-681226_transparent-cute-potato-png-transparent-background-potato-png.png"),
  FoodItems(
      name: "Brinjal",
      imageUrl:
          "https://www.pngitem.com/pimgs/m/127-1272370_brinjal-png-image-brinjal-png-transparent-png.png"),
  FoodItems(
      name: "Carrot",
      imageUrl:
          "https://www.seekpng.com/png/detail/7-77318_carrot-with-transparent-background.png"),
];
