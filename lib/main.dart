import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shop_app/presentation/helpers/routes.dart';
import 'package:shop_app/presentation/helpers/theme.dart';
import 'package:shop_app/presentation/screens/splash/splash_screen.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      theme: theme(),
      // home: SplashScreen(),

      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
