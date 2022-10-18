part of 'auth_bloc.dart';

@immutable
class AuthEvent extends Equatable{
  @override
  List<Object?> get props => [];

}

class Login extends AuthEvent{

}
class Logout extends AuthEvent{

}


class Register extends AuthEvent{

}

