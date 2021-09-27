import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';

class Body1 extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body1> {
  final heightOfAppBar = 56.0;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper2(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper1(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: Colors.pink),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 36),
              child: ListView(
                children: <Widget>[
                  //10% of the height of screen
                  SizedBox(height: heightOfScreen * 0.075),
                  Text('Intro text'),
                  SizedBox(
                    height: 8,
                  ),
                  Text('This is the login form')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
