part of 'gold_cubit_cubit.dart';

sealed class GoldCubitState {}

final class GoldCubitInitial extends GoldCubitState {}

final class GoldCubitLoading extends GoldCubitState {}

final class GoldCubitSuccess extends GoldCubitState {
  final GoldModel goldModel;
  GoldCubitSuccess({required this.goldModel});
}

final class GoldCubitError extends GoldCubitState {
  final String message;
  GoldCubitError({required this.message});
}
