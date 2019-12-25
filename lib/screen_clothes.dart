import 'package:flutter/material.dart';
import 'package:shop_app/card_items.dart';
import 'package:shop_app/model_clothes.dart';

class ScreenClothes extends StatefulWidget {
  @override
  _ScreenClothesState createState() => _ScreenClothesState();
}

class _ScreenClothesState extends State<ScreenClothes> {
  List<ModelClothes> item_clothes = [
    ModelClothes(image_path: "assets/images/clothes1.jpg", name: "Jacket", cost: 100),
    ModelClothes(image_path: "assets/images/clothes6.jpg", name: "Jacket", cost: 150),
    ModelClothes(image_path: "assets/images/clothes3.jpg", name: "Shirt", cost: 200),
    ModelClothes(image_path: "assets/images/clothes4.jpg", name: "Jacket", cost: 50),
    ModelClothes(image_path: "assets/images/clothes5.jpg", name: "Shirt", cost: 80),
    ModelClothes(image_path: "assets/images/clothes7.jpg", name: "Shirt", cost: 180),
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
        itemCount: item_clothes.length,
        controller: new ScrollController(keepScrollOffset: false),
        shrinkWrap: true,
        itemBuilder: (BuildContext context,int index){
          return CardItems(image: item_clothes[index].image_path,
              name: item_clothes[index].name,
              cost: item_clothes[index].cost);
    });
  }
}
