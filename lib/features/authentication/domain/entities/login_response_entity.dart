import 'package:equatable/equatable.dart';

class LoginResponseEntity extends Equatable {
  final String accessToken;
  final String tokenType;

  LoginResponseEntity({
    required this.accessToken,
    required this.tokenType,
  });

  @override
  List<Object?> get props => [accessToken, tokenType];
}
