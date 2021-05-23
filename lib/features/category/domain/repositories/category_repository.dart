import 'package:dartz/dartz.dart';
import 'package:frontend_app_public/core/failure/failure.dart';
import 'package:frontend_app_public/features/category/data/models/categories_response_model.dart';

abstract class CategoryRepository {
  Future<Either<Failure, CategoriesResponseModel>> getCategories();
}
