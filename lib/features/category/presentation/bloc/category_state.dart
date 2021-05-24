part of 'category_bloc.dart';

abstract class CategoryState extends Equatable {
  const CategoryState();
}

class CategoryInitial extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryLoadingState extends CategoryState {
  @override
  List<Object> get props => [];
}

class CategoryErrorState extends CategoryState {
  final String message;

  CategoryErrorState({required this.message});

  @override
  List<Object> get props => [message];
}

class CategoriesLoadedState extends CategoryState {
  final CategoriesResponseModel categories;

  CategoriesLoadedState({required this.categories});

  @override
  List<Object?> get props => [categories];
}
