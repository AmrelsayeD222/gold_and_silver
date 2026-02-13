import 'package:dartz/dartz.dart';
import 'package:gold_and_silver/core/constants/app_constants.dart';
import 'package:gold_and_silver/core/network/errors/failure.dart';
import 'package:gold_and_silver/core/network/services/api_service.dart';
import 'package:gold_and_silver/feature/gold/data/model/gold_model.dart';
import 'package:gold_and_silver/feature/gold/data/repo/gold_repo.dart';

class GoldRepoImpl implements GoldRepo {
  final ApiServices apiServices;
  GoldRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, GoldModel>> getGoldData() async {
    try {
      final response = await apiServices.get(AppConstants.apiGoldUrl);
      return Right(GoldModel.fromJson(response));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
