part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final String username, password;
  const LoginState(this.username, this.password);
}

class LoginInitial extends LoginState {
  const LoginInitial(super.username, super.password);


  @override
  List<Object> get props => [username,password];
}
