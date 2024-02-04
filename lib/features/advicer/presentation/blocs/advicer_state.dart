part of 'advicer_bloc.dart';

@immutable
class AdvicerState extends Equatable {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

//class AdvicerInitial extends AdvicerState {}

class AdvicerLoading extends AdvicerState {}

class AdvicerSuccess extends AdvicerState {
  final String advice;

  AdvicerSuccess({
    required this.advice,
  });

  @override
  List<Object> get props => [advice];
}

class AdvicerError extends AdvicerState {
  final String message;

  AdvicerError({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
