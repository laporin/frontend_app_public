import 'package:equatable/equatable.dart';

class RegisterRequestEntity extends Equatable {
  final String name;
  final String email;
  final String password;

  RegisterRequestEntity({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object?> get props => [name, email, password];
}
