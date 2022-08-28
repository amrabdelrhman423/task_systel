import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_systel/app/usecase.dart';
import 'package:task_systel/data/models/user_login_model.dart';
import 'package:task_systel/domain/usecases/connect_server_usecase.dart';
import 'package:task_systel/presentaion/auth/bloc/state.dart';

import '../../../app/failure.dart';
import '../../../domain/usecases/login_usecase.dart';
import 'event.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState>{
  AuthBloc() : super(IntialState()) {
    on<InitEvent>((event, emit) => _init(emit));
    on<LoginEvent>((event, emit) => _login(emit));
  }
  final loginFormKey = GlobalKey<FormState>();
  TextEditingController usernameOREmailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final ConnectToServer connectToServer = ConnectToServer();
  final LoginUseCase loginUseCase = LoginUseCase();

  _init(Emitter<AuthState> emit) async {
    Either<Failure, bool> response = await connectToServer(NoParams());
    response.fold((failure) {
      emit(ErrorState(message: failure.message));
    }, (r) => emit(IntialState()));
  }

  _login(Emitter<AuthState> emit) async {
    final UserLoginModel _userLoginModel = UserLoginModel(
        usernameOREmailController.text,
        passwordController.text,
        usernameOREmailController.text);
    emit(LoadingState());
    Either<Failure, AuthState> response = await loginUseCase(_userLoginModel);
    response.fold((failure) {
      emit(ErrorState(message: failure.message));
    }, (state) => emit(state));
  }
}
