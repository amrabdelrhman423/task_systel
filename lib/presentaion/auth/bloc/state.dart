abstract class AuthState {}

class IntialState extends AuthState{}
class LoginState extends AuthState{}
class LoadingState extends AuthState{}
class RegisterState extends AuthState{}
class ErrorState extends AuthState {
  final String message;
  ErrorState({required this.message});
}
