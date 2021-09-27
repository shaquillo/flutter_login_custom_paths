import 'package:flutter/material.dart';
import 'package:home/size_config.dart';

import 'package:home/widgets/clipShadowPath.dart';
import 'package:home/widgets/customShapeClipper.dart';
import 'package:home/constants.dart';
import 'package:home/widgets/custom_painters.dart';

class Body4 extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body4> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 2,
        child: GestureDetector(
          onTap: () {
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
            }
          },
          child: Stack(
            children: <Widget>[
              drawCircles(),
              ListView(
                children: <Widget>[
                  SizedBox(
                    height: (heightOfScreen * 0.05) + (widthOfScreen * 0.5),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: widthOfScreen * 0.1,
                      right: widthOfScreen * 0.3,
                    ),
                    child: TabBar(
                      labelStyle: theme.textTheme.subtitle1
                          .copyWith(color: Colors.purple),
                      indicatorColor: Colors.purple,
                      labelColor: Colors.purple,
                      unselectedLabelColor: Colors.purple.shade100,
                      tabs: [
                        Tab(text: 'Login'),
                        Tab(text: 'Register'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: (heightOfScreen * 0.05),
                  ),
                  Container(
                    height: 400,
                    child: _buildTabView(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget drawCircles() {
    var heightOfScreen = MediaQuery.of(context).size.height;
    var widthOfScreen = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.2, heightOfScreen * 0.05),
            radius: widthOfScreen * 0.25,
            color: Colors.purple,
            hasShadow: true,
            shadowColor: Colors.purple.shade100,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.75, heightOfScreen * 0.05),
            radius: widthOfScreen * 0.5,
            color: Colors.purple,
            hasShadow: true,
            shadowColor: Colors.purple.shade100,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.1, heightOfScreen * 0.95),
            radius: widthOfScreen * 0.175,
            color: Colors.purple,
            hasShadow: true,
            shadowColor: Colors.purple.shade100,
          ),
        ),
        CustomPaint(
          painter: DrawCircle(
            offset: Offset(widthOfScreen * 0.35, heightOfScreen * 0.85),
            radius: widthOfScreen * 0.1,
            color: Colors.purple.shade100,
            hasShadow: true,
            shadowColor: Colors.purple.shade100,
          ),
        ),
      ],
    );
  }

  Widget _buildTabView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: TabBarView(
            children: [
              _buildLoginForm(),
              _buildRegisterForm(),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildLoginForm() {
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Text('Login here'));
  }

  Widget _buildRegisterForm() {
    var widthOfScreen = MediaQuery.of(context).size.width;
    ThemeData theme = Theme.of(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Text('Register here'));
  }
}
