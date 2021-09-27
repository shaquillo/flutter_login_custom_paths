import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';

class Body1_Signup extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body1_Signup> {
  @override
  Widget build(BuildContext context) {
    var heightOfAppBar = 56.0;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
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
            Container(
              height: heightOfScreen,
              width: widthOfScreen,
              decoration: BoxDecoration(color: Colors.pink),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomSignUpShapeClipper2(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomSignUpShapeClipper1(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: Colors.grey.shade200),
                ),
              ),
            ),
            Container(
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: heightOfScreen * 0.2),
                        Text('Intro text'),
                        SizedBox(
                          height: 20,
                        ),
                        Text('Sign up form is here'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
