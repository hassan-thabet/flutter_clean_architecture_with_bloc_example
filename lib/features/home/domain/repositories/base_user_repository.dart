
import 'package:dartz/dartz.dart';
import 'package:quick_connect/features/home/domain/entities/user.dart';

import '../../../../core/network/failure.dart';

abstract class BaseUserRepository {
  Future<Either<Failure , List<User>>> getRecommendedUsers();
}