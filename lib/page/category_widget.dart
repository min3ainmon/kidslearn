import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kids_learn/utilities/screen_config.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    Key? key,
    required this.gColor1,
    required this.gColor2,
    required this.widget,
    required this.onPress,
  }) : super(key: key);

  final Color gColor1;
  final Color gColor2;
  final Widget widget;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
          width: SizeConfig.safeBlockHorizontal! * 80,
          height: SizeConfig.safeBlockVertical! * 20,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 13.0,
                spreadRadius: 0.1,
                offset: Offset(0.0, 6.0),
              ),
            ],
            borderRadius: BorderRadius.circular(40.0),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: const [0.1, 1.0],
              colors: [
                gColor1,
                gColor2,
              ],
            ),
          ),
          child: widget,
        ),
      ],
    );
  }
}
