import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/card_categories.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screen_clothes.dart';
import 'package:shop_app/screen_home.dart';
import 'package:shop_app/screen_shoes.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  cat category = cat.all;

  List<Widget> screens = [ScreenHome(),ScreenShoes(),ScreenClothes()];
  Widget current = ScreenHome();
  final PageStorageBucket bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Julu',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w900,color: Colors.black),),
        backgroundColor: backgroundColor,
        elevation: 0.0,
        leading: IconButton( icon : Icon(FlevaIcons.shopping_bag_outline, color: Colors.black,), onPressed: () {

        },),
        actions: <Widget>[
          IconButton(icon: Icon(FlevaIcons.search_outline,color: Colors.black,), onPressed: (){

          })
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.all;
                        current = ScreenHome();

                      });
                    } ,cardColour: category == cat.all ? inactiveColor : Colors.white,
                        textColor: category == cat.all ? Colors.black : inactiveColor,
                        text: "All"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.shoes;
                        current = ScreenShoes();
                      });
                    } ,cardColour: category == cat.shoes ? inactiveColor : Colors.white,
                        textColor: category == cat.shoes ? Colors.black : inactiveColor,
                        text: "Shoes"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.clothes;
                        current = ScreenClothes();
                      });
                    } ,cardColour: category == cat.clothes ? inactiveColor : Colors.white,
                        textColor: category == cat.clothes ? Colors.black : inactiveColor,
                        text: "Clothes"),
                    SizedBox(width: 10,),
                    CardCategories(onPress :(){
                      setState(() {
                        category = cat.Furniture;
                        current = ScreenClothes();
                      });
                    } ,cardColour: category == cat.Furniture ? inactiveColor : Colors.white,
                        textColor: category == cat.Furniture ? Colors.black : inactiveColor,
                        text: "Furnitures"),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
                child: PageStorage(bucket: bucket, child: current)),
          )
        ],
      ),
    );
  }
}
enum cat {
  all,
  clothes,
  shoes,
  Furniture,
}
