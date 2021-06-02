import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/core/failure/server_failure.dart';
import 'package:frontend_app_public/features/user/data/datasources/user_local_data_source.dart';
import 'package:frontend_app_public/features/user/data/models/user_authenticated_model.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/features/user/domain/repositories/user_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: UserRepository)
class BackendUserRepository implements UserRepository {
  final UserLocalDataSource localDataSource;

  BackendUserRepository({
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, UserAuthenticatedModel>> getAuthenticatedUser() async {
    try {
      final response = await localDataSource.getAuthenticatedUser();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
