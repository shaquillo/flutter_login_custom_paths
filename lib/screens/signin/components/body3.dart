import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';

class Body3 extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body3> {
  bool onCheck = false;

  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: ClipPath(
                  clipper: ReverseWaveShapeClipper(),
                  child: Container(
                    height: heightOfScreen * 0.5,
                    width: widthOfScreen,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF88CEBC),
                        Color(0xFF69C7C6),
                      ],
                    )),
                  ),
                ),
              ),
              ListView(
                padding: EdgeInsets.all(0),
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(
                    height: heightOfScreen * 0.5 * 0.90,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: widthOfScreen * 0.15),
                    child: Text(
                      'Log in',
                      style: theme.textTheme.headline3.copyWith(
                        color: Colors.brown.shade600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightOfScreen * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text('This is the form to be build'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
