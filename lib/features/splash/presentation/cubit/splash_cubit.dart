import 'package:ecommerce/features/splash/presentation/cubit/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashDisplayState());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(SplashUnAuthenticatedState());
  }
}
