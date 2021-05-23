import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/category/data/models/categories_response_model.dart';
import 'package:frontend_app_public/features/category/domain/repositories/category_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUsecase
    implements Usecase<CategoriesResponseModel, NoParams> {
  final CategoryRepository repository;

  GetCategoriesUsecase({
    required this.repository,
  });

  @override
  Future<Either<Failure, CategoriesResponseModel>> call(NoParams noParams) async {
    return await repository.getCategories();
  }
}
