import 'package:dio/dio.dart';
import 'package:quick_connect/core/exception/server_exception.dart';
import 'package:quick_connect/core/utils/app_constants.dart';
import 'package:quick_connect/features/home/data/models/user_model.dart';

abstract class BaseUserRemoteDataSource {
  Future<List<UserModel>> getRecommendedUser();
}

class UserRemoteDataSource extends BaseUserRemoteDataSource{
  @override
  Future<List<UserModel>> getRecommendedUser() async {
    final response = await Dio().get(AppConstants.usersEndpoint);
    if( response.statusCode == 200 ) {
      return List<UserModel>.from((response.data["users"]).map((element) => UserModel.fromJson(element)));
    }
    else{
      throw const ServerException(message: 'An unexpected error occurred, please try again later');
    }
  }
}