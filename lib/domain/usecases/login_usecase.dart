import 'package:dartz/dartz.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:task_systel/app/failure.dart';
import 'package:task_systel/app/usecase.dart';
import 'package:task_systel/data/models/user_login_model.dart';
import 'package:task_systel/presentaion/auth/bloc/state.dart';
import 'package:task_systel/app/extensions.dart';

import '../../app/constants.dart';

class LoginUseCase implements UseCase<AuthState, UserLoginModel> {
  @override
  Future<Either<Failure, AuthState>> call(UserLoginModel params) async {
    try {
      ParseUser user =
          ParseUser(params.username, params.password, params.email);
      ParseResponse response = await user.login();
      if (response.success) {
        print("Sucess");
        return Right(LoginState());
      } else {
        print("Register");
        if (params.email.isValidEmail) {
          final userregister = ParseUser.createUser(
              params.username, params.password, params.email);
          await userregister.save();
          return Right(RegisterState());
        } else {
          return Left(Failure(Constants.CredentialError));
        }
      }
    } catch (e) {
      print("Faild with error");

      return Left(Failure(Constants.InternetError));
    }
  }
}
