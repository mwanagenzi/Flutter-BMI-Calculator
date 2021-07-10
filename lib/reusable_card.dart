import 'package:flutter/material.dart';
import 'icon_constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.customColor, this.childCard, this.onPress});
  final Color customColor;
  final Widget childCard;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(kCircularRadiusValue),
        ),
      ),
    );
  }
}
