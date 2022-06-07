import 'package:bloc/bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/signcubit/signinstates.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/login_request.dart';

class SignInCubit extends Cubit<SignInStates> {
  final LoginRequest loginRequest = LoginRequest();
  SignInCubit() : super(InitSignInState());

  login(String email, String password) async {
    emit(LoadingSignInState());
    final response = await loginRequest.login(email, password);
    if (response.status == 200) {
      emit(SuccessSignInState(response.account![0]));
    } else {
      if (response.status == 404) {
        emit(FailureSignInState(response.message!));
      }
    }
  }
}
