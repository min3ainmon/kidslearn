import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_learn/utilities/constant.dart';

class CategoryWidgetData extends StatelessWidget {
  const CategoryWidgetData({
    Key? key,
    required this.mainLabel,
    required this.subLabel,
    required this.image,
  }) : super(key: key);

  final String mainLabel;
  final String subLabel;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mainLabel,
              style: kCardMainTextStyle,
            ),
            Text(
              subLabel,
              style: kCardSubTextStyle,
            ),
          ],
        ),
        Image(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
