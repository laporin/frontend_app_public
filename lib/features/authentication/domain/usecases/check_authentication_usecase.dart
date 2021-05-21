import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/authentication/domain/repositories/authentication_repository.dart';

class CheckAuthenticationUsecase
    implements Usecase<bool, NoParams> {
  final AuthenticationRepository repository;

  CheckAuthenticationUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, bool>> call(NoParams noParams) async {
    return await repository.checkAuthentication();
  }
}
