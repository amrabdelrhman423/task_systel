abstract class HomeEvent {}

class InitEvent extends HomeEvent {}

class DbEvent extends HomeEvent {}
class AdduserEvent extends HomeEvent{
  String username;
  String amount;
  String date;
  AdduserEvent({required this.username,required this.date,required this.amount});
}