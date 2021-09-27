import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';

class Body2 extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body2> {
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
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
                clipper: CustomLoginShapeClipper4(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(color: Colors.orange.shade200),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper5(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    colors: [
                      Colors.orange,
                      Colors.orange.shade100,
                      Colors.deepOrange,
                    ],
                  )),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper6(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: ClipPath(
                clipper: CustomLoginShapeClipper3(),
                child: Container(
                  height: heightOfScreen,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade200,
                        Colors.blue.shade200,
                        Colors.blue.shade100,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Container(
                            height: heightOfScreen * 0.25,
                          ),
                          Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: textTheme.headline.copyWith(
                              color: Colors.lightBlue.shade500,
                            ),
                          ),
                          SizedBox(height: heightOfScreen * 0.05),
                          Text('Form is here'),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: (widthOfScreen * 0.75)),
                            child: Text(
                              "Forgot ?",
                              style: textTheme.body1.copyWith(
                                fontSize: 16,
                                color: Colors.lightBlue.shade100,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 60,
                            width: 120,
                            margin:
                                EdgeInsets.only(right: (widthOfScreen - 120)),
                            child: RaisedButton(
                              onPressed: () => {},
                              color: Colors.white,
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: Text(
                                'Register',
                                style: textTheme.button.copyWith(
                                  color: Colors.orange.shade100,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
