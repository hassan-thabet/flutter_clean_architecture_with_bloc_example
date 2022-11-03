
import 'package:dartz/dartz.dart';
import 'package:quick_connect/features/home/domain/entities/user.dart';
import 'package:quick_connect/features/home/domain/repositories/base_user_repository.dart';
import '../../../../core/network/failure.dart';

class GetRecommendedUsers {
  final BaseUserRepository userRepository;
  GetRecommendedUsers(this.userRepository);

  Future<Either<Failure , List<User>>> execute () async {
    return await userRepository.getRecommendedUsers();
  }
}