part of 'auth_bloc.dart';

@immutable
class AuthState extends Equatable{
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}
class VerifyingUser extends AuthState{
}

class UserVerified extends AuthState{
}

class UserVerifiedError extends AuthState{
}
