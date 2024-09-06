import 'package:flutter_application_9/app/cubit/password_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() :super (show_pass());
  bool visible = false;
  void visibility() {
    visible = !visible;
    if (visible) {
      emit(show_pass());
    } else {
      emit(hide_pass());
    }
  }
}
