import 'package:flutter/material.dart';
import 'package:gold_and_silver/core/constants/app_colors.dart';
import 'package:gold_and_silver/core/constants/app_strings.dart';
import 'package:gold_and_silver/core/routes/app_routes.dart';
import 'package:gold_and_silver/core/utils/widgets/custom_botton.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomBotton(
            width: MediaQuery.of(context).size.width * 0.5,
            text: AppStrings.gold,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.gold);
            },
            backgroundColor: AppColors.gold,
            foregroundColor: AppColors.black,
          ),
          SizedBox(height: 20),
          CustomBotton(
            width: MediaQuery.of(context).size.width * 0.5,

            text: AppStrings.silver,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.silver);
            },
            backgroundColor: AppColors.silver,
            foregroundColor: AppColors.black,
          ),
        ],
      ),
    );
  }
}
