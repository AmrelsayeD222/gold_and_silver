import 'package:flutter/material.dart';
import 'package:gold_and_silver/core/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => AppRouter.generateRoute(settings),
    );
  }
}
