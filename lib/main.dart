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
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: informationContainerDecoration(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.email, size: 30),
                    ),
                    Text(
                      "diebjackal@naver.com",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: informationContainerDecoration(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(Icons.phone, size: 30),
                    ),
                    Text(
                      "+82 010-2995-7185",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: informationContainerDecoration(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: FaIcon(FontAwesomeIcons.github, size: 30),
                    ),
                    Text(
                      "github.com/diebjackal",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
