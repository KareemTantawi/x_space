import 'package:x_space/core/services/network/api/dio_consumer.dart';

import './app_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit(this.dio) : super(AppInitialState());
  DioConsumer dio;
  bool obscureText = true;

  void toggleVisibility() {
    obscureText = !obscureText;

    emit(AppVisibilityState(obscureText));
  }
}
