import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_systel/presentaion/resources/color_manager.dart';

import '../resources/values_manager.dart';
import 'bloc/bloc.dart';
import 'widgets/auth_button_widget.dart';
import 'widgets/background_widget.dart';
import 'widgets/form_body_widget.dart';
import 'bloc/event.dart';
import 'bloc/state.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return _buildPage(context);

    return BlocProvider(
      create: (BuildContext context) => AuthBloc()..add(InitEvent()),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return _buildPage(context, state);
        },
      ),
    );
  }

  Widget _buildPage(BuildContext context, AuthState state) {
    final bloc = BlocProvider.of<AuthBloc>(context);
    return Scaffold(
      backgroundColor: ColorManager.BackgroundScaffoldColor,
      body: Stack(
        children: [
          const BackgroundImage(),
          const BodyFormWidget(),
          Positioned(
            bottom: AppSize.s30,
            right: AppSize.s0,
            left: AppSize.s0,
            child: state is LoadingState
                ? const Center(child: CircularProgressIndicator())
                : InkWell(
                    onTap: () {
                      if (bloc.loginFormKey.currentState!.validate()) {
                        FocusManager.instance.primaryFocus?.unfocus();
                        bloc.add(LoginEvent());
                      }
                    },
                    child: const AuthButtonWidget()),
          ),
        ],
      ),
    );
  }
}
