import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/user/data/models/user_authenticated_model.dart';
import 'package:frontend_app_public/features/user/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetUserAuthenticatedUsecase
    implements Usecase<UserAuthenticatedModel, NoParams> {
  final UserRepository repository;

  GetUserAuthenticatedUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, UserAuthenticatedModel>> call(
    NoParams noParams,
  ) async {
    return await repository.getAuthenticatedUser();
  }
}
