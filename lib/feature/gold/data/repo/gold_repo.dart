import 'package:dartz/dartz.dart';
import 'package:gold_and_silver/core/network/errors/failure.dart';
import 'package:gold_and_silver/feature/gold/data/model/gold_model.dart';

abstract class GoldRepo {
  Future<Either<Failure, GoldModel>> getGoldData();
}
