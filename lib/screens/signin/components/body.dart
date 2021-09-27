import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
        child: Stack(
          children: <Widget>[
            ClipShadowPath(
              clipper: LoginDesignShapeClipper(),
              shadow: Shadow(blurRadius: 24, color: Constants.blue),
              child: Container(
                height: heightOfScreen * 0.4,
                width: widthOfScreen,
                color: Constants.blue,
                child: Container(
                  margin: EdgeInsets.only(left: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: heightOfScreen * 0.1,
                      ),
                      Text(
                        'Welcome Back',
                        style: theme.textTheme.headline6.copyWith(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Login',
                        style: theme.textTheme.headline4.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                SizedBox(
                  height: heightOfScreen * 0.45,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Login body'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
