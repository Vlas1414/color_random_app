import 'package:flutter/material.dart';
import 'package:color_random/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: RandomColorBox(),
    );
  }
}

class RandomColorBox extends StatefulWidget {
  @override
  _RandomColorBoxState createState() => _RandomColorBoxState();
}

class _RandomColorBoxState extends State<RandomColorBox> {
  Color backColor = Colors.black;

  void changeBackgroundColorFunc() => setState(() {
        backColor = Utils.getRandomColor();
      });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      color: backColor,
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: changeBackgroundColorFunc,
        child: Center(
          child: Text(
            'Hey there',
            style: TextStyle(
              fontSize: 35,
              color: Colors.white,
              fontFamily: 'IndieFlower',
            ),
          ),
        ),
      ),
    );
  }
}
