import 'package:dartz/dartz.dart';
import 'package:gold_and_silver/core/network/errors/failure.dart';
import 'package:gold_and_silver/feature/silver/data/model/silver_model.dart';

abstract class SilverRepo {
  Future<Either<Failure, SilverModel>> getSilverData();
}
