import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_and_silver/core/network/services/api_service.dart';
import 'package:gold_and_silver/core/routes/app_routes.dart';
import 'package:gold_and_silver/feature/gold/data/repo/gold_repo_impl.dart';
import 'package:gold_and_silver/feature/gold/ui/manager/gold_cubit/gold_cubit_cubit.dart';

import 'package:gold_and_silver/feature/gold/ui/view/gold_view.dart';
import 'package:gold_and_silver/feature/home/home_view.dart';
import 'package:gold_and_silver/feature/silver/data/repo/silver_repo_impl.dart';
import 'package:gold_and_silver/feature/silver/ui/manager/silver_cubit/silver_cubit_cubit.dart';
import 'package:gold_and_silver/feature/silver/ui/view/silver_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final apiService = ApiServices();
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case AppRoutes.gold:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                GoldCubitCubit(GoldRepoImpl(apiService))..getGoldData(),
            child: const GoldView(),
          ),
        );
      case AppRoutes.silver:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                SilverCubitCubit(SilverRepoImpl(apiService))..getSilverData(),
            child: const SilverView(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const HomeView());
    }
  }
}
