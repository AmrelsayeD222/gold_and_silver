import 'package:dartz/dartz.dart';
import 'package:gold_and_silver/core/constants/app_constants.dart';
import 'package:gold_and_silver/core/network/errors/failure.dart';
import 'package:gold_and_silver/core/network/services/api_service.dart';
import 'package:gold_and_silver/feature/silver/data/model/silver_model.dart';
import 'package:gold_and_silver/feature/silver/data/repo/silver_repo.dart';

class SilverRepoImpl implements SilverRepo {
  final ApiServices apiServices;
  SilverRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, SilverModel>> getSilverData() async {
    try {
      final response = await apiServices.get(AppConstants.apiSilverUrl);
      return Right(SilverModel.fromJson(response));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
