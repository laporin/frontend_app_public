import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/category/data/models/categories_response_model.dart';
import 'package:frontend_app_public/features/category/domain/usecases/get_categories_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUsecase usecase;

  CategoryBloc({
    required this.usecase,
  }) : super(CategoryInitial());

  @override
  Stream<CategoryState> mapEventToState(
    CategoryEvent event,
  ) async* {
    if (event is GetCategoriesEvent) {
      yield CategoryLoadingState();
      final failOrResponse = await usecase(NoParams());
      yield failOrResponse.fold(
        (failure) => CategoryErrorState(message: 'Something went wrong'),
        (response) => CategoriesLoadedState(categories: response),
      );
    }
  }
}
