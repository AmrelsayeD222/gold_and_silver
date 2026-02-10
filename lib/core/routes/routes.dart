import 'package:flutter/material.dart';
import 'package:gold_and_silver/core/routes/app_routes.dart';
import 'package:gold_and_silver/feature/gold/ui/view/gold_view.dart';
import 'package:gold_and_silver/feature/home/home_view.dart';
import 'package:gold_and_silver/feature/silver/ui/view/silver_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.gold:
        return MaterialPageRoute(builder: (_) => const GoldView());
      case AppRoutes.silver:
        return MaterialPageRoute(builder: (_) => const SilverView());
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
