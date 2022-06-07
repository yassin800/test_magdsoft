import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/login.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/register.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/result.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
       case '/':
         return MaterialPageRoute(builder: (_) => const Login());
       case '/register':
        return MaterialPageRoute(builder: (_) => const Register());
         case '/result':
        return MaterialPageRoute(builder: (_) => const Result());
      default:
        return null;
    }
  }
}