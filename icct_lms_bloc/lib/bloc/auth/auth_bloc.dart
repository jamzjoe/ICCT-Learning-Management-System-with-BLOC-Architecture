import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async{
    });
    
    on<Login>((event, emit)async{
      emit(UserVerified());
    });

    on<Register>((event, emit)async{
      emit(UserVerified());
    });

    on<Logout>((event, emit)async{
      emit(UserVerifiedError());
    });
  }
}
