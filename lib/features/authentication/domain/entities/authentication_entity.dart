import 'package:equatable/equatable.dart';

class AuthenticationEntity extends Equatable {
  final String accessToken;

  AuthenticationEntity({
    required this.accessToken,
  });

  @override
  List<Object?> get props => [accessToken];
}
