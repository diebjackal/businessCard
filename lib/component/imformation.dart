import 'package:business_card/utlilty/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ImformationContainer extends StatefulWidget {
  ImformationContainer({@required this.index});

  final int index;

  @override
  _ImformationContainerState createState() => _ImformationContainerState();
}

class _ImformationContainerState extends State<ImformationContainer> {
  List<IconData> iconLIst = [
    Icons.email,
    Icons.phone,
    FontAwesomeIcons.github,
  ];

  List<String> imformationTextList = [
    "diebjackal@naver.com",
    "+82 010-2995-7185",
    "github.com/diebjackal"
  ];

  List<String> urlList = [
    'mailto:diebjackal@naver.com',
    'tel://01029957185',
    "https://github.com/diebjackal"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: FlatButton(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        onPressed: () => launch(urlList[widget.index]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: FaIcon(iconLIst[widget.index], size: 30),
            ),
            Text(
              imformationTextList[widget.index],
              style: imformationTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
