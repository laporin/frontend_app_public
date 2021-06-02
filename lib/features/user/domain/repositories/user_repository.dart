import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/user/data/models/user_authenticated_model.dart';

abstract class UserRepository {
  Future<Either<Failure, UserAuthenticatedModel>> getAuthenticatedUser();
}
