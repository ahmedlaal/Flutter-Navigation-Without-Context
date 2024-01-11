import 'package:flutter/material.dart';
import 'package:navigationwithoutcontext/locator.dart';
import 'package:navigationwithoutcontext/router.dart';
import 'package:navigationwithoutcontext/services/navigationService.dart';

void main() {
  setLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home",
      onGenerateRoute:generateRoutes ,
      navigatorKey: locator<NavigationService>().navigatorkey,
    );
  }
}