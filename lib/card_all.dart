import 'package:fleva_icons/fleva_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class CardAll extends StatelessWidget {
  final String image;
  final String text;
  final String sub;

  CardAll({@required this.image,@required this.text,@required this.sub});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            width: 50,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(image))
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(text,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                Text(sub,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: backgroundColor),),
              ],
            ),
          ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Button(),
         )
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: RawMaterialButton(
        onPressed: (){

      },
      fillColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Icon(FlevaIcons.arrow_forward_outline, color: Colors.white,),
      ),
      ),
    );
  }
}
