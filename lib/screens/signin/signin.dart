import 'package:flutter/material.dart';
import 'package:home/screens/signin/components/body1.dart';
import 'package:home/screens/signin/components/body2.dart';
import 'package:home/screens/signin/components/body3.dart';
import 'package:home/screens/signin/components/body3_signup.dart';
import 'package:home/screens/signin/components/body4.dart';

import 'components/body.dart';

class Signin extends StatelessWidget {
  static const routeName = 'signin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body4(),
    );
  }
}
