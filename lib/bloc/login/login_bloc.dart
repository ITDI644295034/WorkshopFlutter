import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial(username, password)) {
    on<LoginEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  static String get username => "";

  static String get password => "null";
}
