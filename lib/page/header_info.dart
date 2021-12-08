import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kids_learn/utilities/constant.dart';
import 'package:kids_learn/utilities/screen_config.dart';

class HeaderInfo extends StatelessWidget {
  const HeaderInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Let\'s Learning',
                style: TextStyle(
                  fontFamily: 'Prompt',
                  fontSize: SizeConfig.safeBlockHorizontal! * 8,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0A5688),
                ),
              ),
              Text(
                'improve your kids ablility',
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal! * 2.5,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF3B3B3B),
                  letterSpacing: 3.0,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            FontAwesomeIcons.user,
            size: SizeConfig.safeBlockHorizontal! * 6,
          ),
        ],
      ),
    );
  }
}
