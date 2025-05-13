abstract class AuthState {}

final class AuthInitial extends AuthState {}
class LoginSuccessState extends AuthState{}
class LoginLoadingState extends AuthState{}
class LoginFailureState extends AuthState{
  final String errorMsg;

  LoginFailureState(this.errorMsg);
}
class RegisterSuccessState extends AuthState{}
class RegisterLoadingState extends AuthState{}
class RegisterFailureState extends AuthState{
  final String errorMsg;
  RegisterFailureState(this.errorMsg);
}
class RegisterSecurePassState extends AuthState{}