import 'package:flutter/material.dart';

class CardCategories extends StatelessWidget {
  final Color cardColour;
  final Color textColor ;
  final Function onPress;
  final String text;
  CardCategories({@required this.cardColour,@required this.textColor,@required this.onPress,@required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: cardColour,

        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(text ,style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15,color: textColor),),
          ),
        ),
      ),
    );
  }
}
