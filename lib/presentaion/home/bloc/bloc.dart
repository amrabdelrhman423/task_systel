import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:task_systel/data/data_source/local_database.dart';

import 'event.dart';
import 'state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(initalHomeState()) {
    on<InitEvent>((event, emit) => _init(emit));
    on<AdduserEvent>((event, emit) => adduser(emit,
        username: event.username, amount: event.amount, date: event.date));
  }

  _init(Emitter<HomeState> emit) async {
    if (kDebugMode) {
      print("HI DB");
    }
    emit(LoadingHomeState());
    await LocalDataSource.createDatabase();
    emit(DatabaseCreatedState());
  }

  adduser(Emitter<HomeState> emit,
      {required username, required amount, required date}) async {
    if (kDebugMode) {
      print('Add User');
    }
    emit(LoadingHomeState());
    try {
      await LocalDataSource.insetDatabase(
          username: username, amount: amount, date: date);
      emit(AddUserState());
    }catch(e){
      print(e);
      emit(ErrorHomeState());
    }
  }
}
