part of 'logreg_toggle_cubit.dart';

@immutable
class LogRegToggleState extends Equatable {
  bool? toggled;
  LogRegToggleState({required this.toggled});


  @override
  List<Object?> get props => [toggled];
}

