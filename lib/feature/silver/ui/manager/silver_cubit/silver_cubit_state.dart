part of 'silver_cubit_cubit.dart';

sealed class SilverCubitState {}

final class SilverCubitInitial extends SilverCubitState {}

final class SilverCubitLoading extends SilverCubitState {}

final class SilverCubitSuccess extends SilverCubitState {
  final SilverModel silverModel;
  SilverCubitSuccess(this.silverModel);
}

final class SilverCubitError extends SilverCubitState {
  final String message;
  SilverCubitError(this.message);
}
