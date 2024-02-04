import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerState()) {
    on<RequestEvent>((event, emit) async {
      emit(AdvicerLoading());
      print('fake loading advice');
      await Future.delayed(const Duration(seconds: 1), () {
        emit(AdvicerSuccess(advice: 'Advice'));
        print(' get Advice');
      });
    });
  }
}
