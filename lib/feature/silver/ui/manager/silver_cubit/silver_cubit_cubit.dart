import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_and_silver/feature/silver/data/model/silver_model.dart';
import 'package:gold_and_silver/feature/silver/data/repo/silver_repo.dart';

part 'silver_cubit_state.dart';

class SilverCubitCubit extends Cubit<SilverCubitState> {
  SilverCubitCubit(this.silverRepo) : super(SilverCubitInitial());
  final SilverRepo silverRepo;
  Future<void> getSilverData() async {
    emit(SilverCubitLoading());
    final result = await silverRepo.getSilverData();
    result.fold(
      (failure) => emit(SilverCubitError(failure.errMessage)),
      (silverModel) => emit(SilverCubitSuccess(silverModel)),
    );
  }
}
