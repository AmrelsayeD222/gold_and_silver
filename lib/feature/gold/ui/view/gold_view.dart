import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_and_silver/core/constants/app_images.dart';
import 'package:gold_and_silver/feature/gold/ui/manager/gold_cubit/gold_cubit_cubit.dart';

class GoldView extends StatelessWidget {
  const GoldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GoldCubitCubit, GoldCubitState>(
        builder: (context, state) {
          if (state is GoldCubitLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GoldCubitError) {
            log(state.message);
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(state.message),
              ),
            );
          } else if (state is GoldCubitSuccess) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      AppImages.goldImage,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "${state.goldModel.price.toString()} ${state.goldModel.symbol}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
