import 'package:equatable/equatable.dart';

class RegisterResponseEntity extends Equatable {
  final String accessToken;
  final String tokenType;

  RegisterResponseEntity({
    required this.accessToken,
    required this.tokenType,
  });

  @override
  List<Object?> get props => [accessToken, tokenType];
}
