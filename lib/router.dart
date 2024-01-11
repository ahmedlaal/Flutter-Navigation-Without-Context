import 'package:flutter/material.dart';
import 'package:navigationwithoutcontext/views/firstScreen.dart';
import 'package:navigationwithoutcontext/views/home.dart';
import 'package:navigationwithoutcontext/views/secondScreen.dart';

Route<dynamic> generateRoutes(RouteSettings settings){

switch (settings.name) {
  case "home":
  return MaterialPageRoute(builder: (_)=> HomeScreen());
  case "first":
  return MaterialPageRoute(builder: (_)=> FirstScreen());
  case "second":
  return MaterialPageRoute(builder: (_)=> SecondScreen());
    
  
  default:
  return MaterialPageRoute(builder: ((context) {
    return Scaffold(
      body: Center(child: Text("Error"),),
    );

  }));
}
}