import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();
  dynamic pushTo(String route, {dynamic arguments}){
      return navigatorkey.currentState?.pushNamed(route,arguments: arguments);
  }
  dynamic goBack(){
    return navigatorkey.currentState?.pop();
  }
}