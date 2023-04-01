import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task0_2/bloc/events.dart';
import 'package:task0_2/bloc/states.dart';

class ChanginState extends Bloc<StateEvents, StateChanged> {
  ChanginState() : super(StateChanged()) {
    on<ChangeSlieValue>(_changeSlider);
    on<ChangeColor>(_changeColor);
  }

  void _changeColor(ChangeColor event, Emitter<StateChanged> emit) {
    emit(state.copyWith(isColorChanged: true));
  }

  void _changeSlider(ChangeSlieValue event, Emitter<StateChanged> emit) {
    emit(state.copyWith(slideevalue: true));
  }
}
