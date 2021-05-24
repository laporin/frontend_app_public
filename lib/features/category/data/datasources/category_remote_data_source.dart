import 'package:dio/dio.dart';
import 'package:frontend_app_public/core/exception/server_exception.dart';
import 'package:frontend_app_public/env/env.dart';
import 'package:frontend_app_public/features/category/data/models/categories_response_model.dart';
import 'package:injectable/injectable.dart';

abstract class CategoryRemoteDataSource {
  Future<CategoriesResponseModel> getReports();
}

@Injectable(as: CategoryRemoteDataSource)
class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Dio dio;

  CategoryRemoteDataSourceImpl({
    required this.dio,
  });

  @override
  Future<CategoriesResponseModel> getReports() async {
    // dio.interceptors.add(InterceptorsWrapper());
    final response = await dio.get("${Env.backendUrl}/api/categories");
    if (response.statusCode == 200) {
      return CategoriesResponseModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
