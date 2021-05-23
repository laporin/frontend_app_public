import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/failure/server_failure.dart';
import 'package:frontend_app_public/features/category/data/datasources/category_remote_data_source.dart';
import 'package:frontend_app_public/features/category/data/models/categories_response_model.dart';
import 'package:frontend_app_public/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: CategoryRepository)
class BackendCategoryRepository implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;

  BackendCategoryRepository({
    required this.remoteDataSource,
  });

  @override
  Future<Either<Failure, CategoriesResponseModel>> getCategories() async {
    try {
      final response = await remoteDataSource.getReports();
      return Right(response);
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
