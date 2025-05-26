import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeMode> {
  ThemeCubit() : super(ThemeMode.light);

  void setTheme(String selectedTheme) {
    if (selectedTheme == 'Light') {
      emit(ThemeMode.light);
    } else {
      emit(ThemeMode.dark);
    }
  }
}
