import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

// Fired just after the app is launched
class AppLoadedup extends AuthenticationEvent {}

class UserLogOut extends AuthenticationEvent {}

class GetUserData extends AuthenticationEvent {}

class UserSignUp extends AuthenticationEvent {
  final String username;
  final String email;
  final String password;
  UserSignUp({@required this.username, this.email, this.password});

  @override
  List<Object> get props => [username, email, password];
}

class UserLogin extends AuthenticationEvent {
  final String email;
  final String password;
  UserLogin({@required this.email, this.password});

  @override
  List<Object> get props => [email, password];
}
