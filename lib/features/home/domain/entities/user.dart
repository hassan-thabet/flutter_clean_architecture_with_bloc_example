import 'package:equatable/equatable.dart';

class User extends Equatable{
  final int id;
  final String firstName;
  final String lastName;
  final int age;
  final String gender;
  final String email;
  final String phone;
  final String birthDate;
  final String image;

  const User({
      required this.id,
      required this.firstName,
      required this.lastName,
      required this.age,
      required this.gender,
      required this.email,
      required this.phone,
      required this.birthDate,
      required this.image
  });

  @override
  // TODO: implement props
  List<Object> get props =>
      [id , firstName , lastName , age , gender , email , phone , birthDate , image];


}
