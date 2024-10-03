// import 'package:app_clopallmedie_dashboard/core/common/logout/logout_model.dart';
// import 'package:app_clopallmedie_dashboard/core/services/network/api/api_endpoints.dart';
// import 'package:app_clopallmedie_dashboard/core/services/network/api/dio_consumer.dart';
// import 'package:app_clopallmedie_dashboard/core/services/network/error/exceptions.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../services/shared_prefrences/shared_pref.dart';
// import 'logout_state.dart';

// class LogoutCubit extends Cubit<LogoutState> {
//   LogoutCubit(this.dio) : super(LogoutInitialState());
//   DioConsumer dio;
//   LogoutModel? logoutModel;
//   Future<void> logout() async {
//     final token = CacheHelper.sharedPreferences.getString('login_token');
//     try {
//       emit(LogoutLoadingState());
//       final response = await dio.post(
//         EndPoints.logout,
//         token: token,
//       );

//       logoutModel = LogoutModel.fromJson(response);
//       emit(LogoutSuccessState());
//     } on ServerException catch (e) {
//       emit(LogoutErrorState(message: e.errModel.errorMessage));
//     }
//   }
// }
