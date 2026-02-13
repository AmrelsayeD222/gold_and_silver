import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gold_and_silver/feature/gold/data/model/gold_model.dart';
import 'package:gold_and_silver/feature/gold/data/repo/gold_repo.dart';

part 'gold_cubit_state.dart';

class GoldCubitCubit extends Cubit<GoldCubitState> {
  final GoldRepo goldRepo;
  GoldCubitCubit(this.goldRepo) : super(GoldCubitInitial());

  Future<void> getGoldData() async {
    emit(GoldCubitLoading());
    final result = await goldRepo.getGoldData();
    result.fold(
      (failure) => emit(GoldCubitError(message: failure.errMessage)),
      (goldModel) => emit(GoldCubitSuccess(goldModel: goldModel)),
    );
  }
}
