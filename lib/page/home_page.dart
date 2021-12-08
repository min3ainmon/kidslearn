import 'package:flutter/material.dart';
import 'package:kids_learn/page/category_widget_data.dart';
import 'header_info.dart';
import 'category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              HeaderInfo(),
              CategoryWidget(
                gColor1: Color(0xFF737DFE),
                gColor2: Color(0xFFFFCAC9),
                widget: CategoryWidgetData(
                  mainLabel: 'Learning',
                  subLabel: 'for Alphabet',
                  image: 'assets/images/abc.png',
                ),
                onPress: () {},
              ),
              CategoryWidget(
                gColor1: Color(0xFF2F80ED),
                gColor2: Color(0xFFB2FFDA),
                widget: CategoryWidgetData(
                  mainLabel: 'Learning',
                  subLabel: 'for Animal',
                  image: 'assets/images/zoo.png',
                ),
                onPress: () {},
              ),
              CategoryWidget(
                gColor1: Color(0xFFED6F9E),
                gColor2: Color(0xFFEC886E),
                widget: CategoryWidgetData(
                  mainLabel: 'Quiz',
                  subLabel: 'Animal',
                  image: 'assets/images/ideas.png',
                ),
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
