import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:task_systel/app/constants.dart';
import 'package:task_systel/app/failure.dart';
import 'package:task_systel/app/usecase.dart';

class ConnectToServer implements UseCase<bool, NoParams> {
  @override
  Future<Either<Failure, bool>> call(params) async {
    try {
      await Parse().initialize(
          Constants.keyParseApplicationId, Constants.keyParseServerUrl);
      final ParseResponse response = await Parse().healthCheck();
      if (response.success) {
        if (kDebugMode) {
          print("Sucess");
        }
        return const Right(true);
      } else {
        if (kDebugMode) {
          print("Faild"+response.error.toString());
        }
        return Left(Failure(Constants.CredentialError));
      }
    } catch (e) {
      if (kDebugMode) {
        print("Faild with error");
      }

      return Left(Failure(Constants.InternetError));
    }
  }
}
