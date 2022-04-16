import 'package:flutter/material.dart';
import 'package:shop_app/presentation/helpers/size_config.dart';
import 'package:shop_app/presentation/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}
