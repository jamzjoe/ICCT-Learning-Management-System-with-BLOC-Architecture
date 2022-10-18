import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'logreg_toggle_state.dart';

class LogRegToggleCubit extends Cubit<LogRegToggleState> {
  LogRegToggleCubit() : super(LogRegToggleState(toggled: false));

  void toggleScreen() => emit(LogRegToggleState(toggled: !state.toggled!));

}
