
import 'package:quick_connect/features/home/domain/entities/user.dart';

class UserModel extends User {
  const UserModel
  ({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.age,
    required super.gender,
    required super.email,
    required super.phone,
    required super.birthDate,
    required super.image
  });

  factory UserModel.fromJson( Map< String , dynamic > json )
      => UserModel(
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        age: json['age'],
        gender: json['gender'],
        email: json['email'],
        phone: json['phone'],
        birthDate: json['birthDate'],
        image: json['image']
      );
}