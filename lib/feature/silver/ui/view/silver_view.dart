import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_and_silver/core/constants/app_images.dart';
import 'package:gold_and_silver/feature/silver/ui/manager/silver_cubit/silver_cubit_cubit.dart';

class SilverView extends StatelessWidget {
  const SilverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SilverCubitCubit, SilverCubitState>(
        builder: (context, state) {
          if (state is SilverCubitLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SilverCubitError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(state.message),
              ),
            );
          } else if (state is SilverCubitSuccess) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      AppImages.silverImage,
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    "${state.silverModel.price.toString()} ${state.silverModel.symbol}",
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
