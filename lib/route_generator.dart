// ignore_for_file: unused_local_variable, prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'presentation_layer/screen/product_screen/product_screen.dart';
import 'presentation_layer/screen/chat_screen/chat_screen.dart';
import 'presentation_layer/screen/home_screen/home_scree.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return CupertinoPageRoute(builder: (context) => HomeScreen());
      case '/product':
        return CupertinoPageRoute(builder: (context) => ProductScreen());
      case '/chat':
        return CupertinoPageRoute(builder: (context) => ChatScreen());
      default:
        return CupertinoPageRoute(builder: (context) => HomeScreen());
    }
  }
}
