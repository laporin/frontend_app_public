import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_app_public/core/usecases/usecase.dart';
import 'package:frontend_app_public/features/user/data/models/user_authenticated_model.dart';
import 'package:frontend_app_public/features/user/domain/usecases/get_user_authenticated_usecase.dart';
import 'package:injectable/injectable.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserAuthenticatedUsecase userUsecase;

  UserBloc(this.userUsecase) : super(UserState.initial());

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    yield* event.map(getAuthenticatedUserEvent: (event) async* {
      yield UserState.loading();

      final failureOrResponse = await userUsecase(NoParams());
      yield failureOrResponse.fold(
        (failure) => UserState.error('wrong') ,
        (right) => UserState.loaded(right),
      );
    });
  }
}
