import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/card_all.dart';
import 'package:shop_app/card_items.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/model_all.dart';
import 'package:shop_app/model_trending.dart';

class ScreenHome extends StatelessWidget {
  List<ModelAll> item_list = [
    ModelAll(image_path: 'assets/images/tv1.jpg', title: "UHD 4K", cost: 3000),
    ModelAll(image_path: 'assets/images/clothes1.jpg', title: "Jacket", cost: 300),
    ModelAll(image_path: 'assets/images/shoes8.jpg', title: "Nike", cost: 300),
    ModelAll(image_path: 'assets/images/shoes7.jpg', title: "Snikers", cost: 300),
  ];

  List<ModelTrending> item_trending =[
    ModelTrending(image_path: 'assets/images/tv1.jpg', title: "Samsung Samrt tv", sub: "Its is now released in to the market for ..."),
    ModelTrending(image_path: 'assets/images/furniture1.jpg', title: "Furnitures", sub: "Its is now released in to the market for ..."),
    ModelTrending(image_path: 'assets/images/tv1.jpg', title: "Samsung Samrt tv", sub: "Its is now released in to the market for ..."),
    ModelTrending(image_path: 'assets/images/tv1.jpg', title: "Samsung Samrt tv", sub: "Its is now released in to the market for ..."),
    ModelTrending(image_path: 'assets/images/tv1.jpg', title: "Samsung Samrt tv", sub: "Its is now released in to the market for ..."),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Latest",style: headStyle1,),
                ),
              ],
            ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: item_list.length,
              scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                return CardItems(image: item_list[index].image_path,
                    name: item_list[index].title,
                    cost: item_list[index].cost);
            }),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Trending Now",style: headStyle1,),
              ),
            ],
          ),
          Container(
            height: 510,
            child: ListView.builder(
                itemCount: item_trending.length,
                itemBuilder: (BuildContext context,int index){
              return CardAll(
                  image: item_trending[index].image_path,
                  text: item_trending[index].title,
                  sub: item_trending[index].sub
              );
            }),
          )
        ],
      ),
    );
  }
}
