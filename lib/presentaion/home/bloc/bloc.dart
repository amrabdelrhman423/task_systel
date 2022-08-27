import 'package:bloc/bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:task_systel/data/data_source/local_database.dart';

import 'event.dart';
import 'state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(initalHomeState()){
    on<InitEvent>((event, emit) => _init());

  }

  _init() async{
    print("HHHHHHHHI DB");
   Database database=await LocalDataSource.createDatabase();
   emit(DatabaseCreatedState());
  }

  adduser({required username,required amount,required date})async{
    print('add user');
    await LocalDataSource.insetDatabase(username: username, amount: amount, date: date);
    emit(AddUserState());
  }


}


