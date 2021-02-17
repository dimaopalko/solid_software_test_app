import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solid_software_test_app/RandomColorGenerator.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var color = Colors.white;

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onTap: () {
        print('Screen was tapped');
        setState(() {
          color = RandomColorGenerator.randomColor();
        });
        print('New background $color');
    },
      child: Container(
        decoration: BoxDecoration(
          color: color
        ),
        child: Center(
          child: Text('Hey There!',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
          ),
        ),
      ),
    );
  }
}
