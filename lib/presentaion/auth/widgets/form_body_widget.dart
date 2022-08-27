import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_systel/app/constants.dart';
import 'package:task_systel/app/extensions.dart';
import 'package:task_systel/presentaion/auth/bloc/bloc.dart';
import 'package:task_systel/presentaion/auth/bloc/state.dart';
import 'package:task_systel/presentaion/auth/widgets/register_message_widget.dart';
import 'package:task_systel/presentaion/resources/color_manager.dart';
import 'package:task_systel/presentaion/resources/values_manager.dart';
import 'package:task_systel/presentaion/auth/widgets/error_widget.dart';

import '../../resources/routes_manager.dart';

class BodyFormWidget extends StatelessWidget {
  const BodyFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      builder: (context, state) {
        final bloc = BlocProvider.of<AuthBloc>(context);
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p18, vertical: AppPadding.p8),
          child: Form(
              key: bloc.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  state is ErrorState
                      ? ErrorLoginWidget(message: state.message)
                      : const SizedBox(),
                  state is RegisterState
                      ? const RegisterMessageWidget(message:Constants.RegisterSucess)
                      : const SizedBox(),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  TextFormField(
                    controller: bloc.usernameOREmailController,
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        hintText: Constants.USERNAMEOREMAIL),
                    validator: (val) {
                      if (!val!.isValidEmail && !val.isValidName) {
                        return "value is incorrect";
                      }
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s12,
                  ),
                  TextFormField(
                    controller: bloc.passwordController,
                    textAlign: TextAlign.center,
                    cursorColor: ColorManager.Primary,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: const InputDecoration(hintText: Constants.PASSWORD),
                    validator: (val) {
                      if (!val.isValidatePassword) {
                        return "password is not valid";
                      }
                    },
                  ),
                ],
              )),
        );
      },
      listener: (context, state) {
        if (state is LoginState) {
          Navigator.of(context).pushReplacementNamed(Routes.homeScreen);
        }
      },
    );
  }
}
