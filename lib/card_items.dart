import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CardItems extends StatelessWidget {
  final String image;
  final String name;
  final double cost;
  final Function onPress;

  CardItems({@required this.image,@required this.name,@required this.cost, this.onPress});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
          width: 160,
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(image: AssetImage(image),
            )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  IconButton(icon: Icon(FlevaIcons.shopping_cart_outline), onPressed: (){

                  }),
                ],
              ),
              Expanded(child: SizedBox()),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0,bottom: 8.0),
                      child: Text('\$$cost',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
    );
  }
}
