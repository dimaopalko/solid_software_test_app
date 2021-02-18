import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:solid_software_test_app/ColorService.dart';

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
  var backgroundColor = Colors.white;
  var fontColor = Colors.black;

  void changeColors(){
      backgroundColor = ColorService.randomColor().withAlpha(255);
      print('New background $backgroundColor');
      if (backgroundColor.computeLuminance() < 0.5) {
        print('Background color looks dark. Setting font color to white.');
        fontColor = Colors.white;
      } else {
        print('Background color looks bright. Setting font color to black.');
        fontColor = Colors.black;
      }
  }

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
      onTap: () {
        print('Screen was tapped');
        setState(() {
          changeColors();
        });
    },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor
        ),
        child: Center(
          child: Text('Hey There!',
          style: TextStyle(color: fontColor,
          fontSize: 35.0,
          fontWeight: FontWeight.bold)
          ),
        ),
      ),
    );
  }
}
