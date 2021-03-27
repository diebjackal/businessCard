import 'package:business_card/utlilty/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/UserPhoto.png'),
              ),
              Text("이상윤", style: nameTextStyle),
              Text("flutter 개발자", style: jobTextStyle),
              ImformationContainer(index: 0),
              ImformationContainer(index: 1),
              ImformationContainer(index: 2),
            ],
          ),
        ),
      ),
    );
  }
}

class ImformationContainer extends StatelessWidget {
  ImformationContainer({@required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 70,
      decoration: informationContainerDecoration(),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: FaIcon(iconLIst[index], size: 30),
          ),
          Text(
            imformationTextList[index],
            style: imformationTextStyle,
          ),
        ],
      ),
    );
  }
}
