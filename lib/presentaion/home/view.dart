import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_systel/presentaion/home/widgets/background_widget.dart';
import 'package:task_systel/presentaion/home/widgets/body_home_widget.dart';

import 'bloc/bloc.dart';
import 'bloc/event.dart';
import 'bloc/state.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return _buildPage(context);
    return BlocProvider(
      create: (BuildContext context) => HomeBloc()..add(InitEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {

    return Scaffold(
      body: Stack(
        children:  const [
          CustomBackground(),
          BodyHomeWidget(),
        ],
      ),
    );
  }
}
