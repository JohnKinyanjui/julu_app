import 'package:flutter/material.dart';
import 'package:shop_app/card_items.dart';
import 'package:shop_app/model_shoes.dart';

class ScreenShoes extends StatelessWidget {
  List<ModelShoes> item_list = [
    ModelShoes(image_path: "assets/images/shoes2.jpg", name: "Shoes", cost: 200),
    ModelShoes(image_path: "assets/images/shoes3.jpg", name: "Shoes", cost: 160),
    ModelShoes(image_path: "assets/images/shoes4.jpg", name: "Dlites", cost: 100),
    ModelShoes(image_path: "assets/images/shoes5.jpg", name: "Adapt BB", cost: 100),
    ModelShoes(image_path: "assets/images/shoes6.jpeg", name: "Sneakers", cost: 100),
    ModelShoes(image_path: "assets/images/shoes7.jpg", name: "Adapt BB", cost: 100),
    ModelShoes(image_path: "assets/images/shoes8.jpg", name: "Addidas", cost: 150),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 150) / 2;
    final double itemWidth = size.width / 2;
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
        childAspectRatio:  (itemWidth / itemHeight)

    ),
        itemCount: item_list.length,
        itemBuilder: (BuildContext contexr,int index){
           return CardItems(image: item_list[index].image_path,
               name: item_list[index].name,
               cost: item_list[index].cost);
    });
  }
}
