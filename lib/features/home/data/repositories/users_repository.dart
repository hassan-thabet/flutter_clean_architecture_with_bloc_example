
import 'package:dartz/dartz.dart';
import 'package:quick_connect/core/exception/server_exception.dart';
import 'package:quick_connect/core/network/failure.dart';
import 'package:quick_connect/features/home/data/data_sources/user_remote_data_source.dart';
import 'package:quick_connect/features/home/domain/entities/user.dart';
import 'package:quick_connect/features/home/domain/repositories/base_user_repository.dart';

class UserRepository extends BaseUserRepository{
  final BaseUserRemoteDataSource baseUserRemoteDataSource;
  UserRepository(this.baseUserRemoteDataSource);

  @override
  Future<Either<Failure , List<User>>> getRecommendedUsers() async {
     final result = await baseUserRemoteDataSource.getRecommendedUser();
     try {
       return Right(result);
      } on ServerException catch(failure){
       return Left(ServerFailure(failure.message));
     }
  }
}