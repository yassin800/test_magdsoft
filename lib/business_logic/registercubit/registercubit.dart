import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/business_logic/registercubit/registerstates.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/registerrequest.dart';




class RegisterCubit extends Cubit<RegisterStates> {
   final RegisterRequest registerRequest = RegisterRequest();
  RegisterCubit() : super(InitRegisterState());
   register(String name,String email, String password,String phone) async {
    emit(LoadingRegisterState());
    final response = await RegisterRequest().register(name,email,password,phone);
    if (response.status == 200) {
      emit(SuccessRegisterState(response.status,response.message));
    } else {
      if (response.status == 404) {
        emit(FailureRegisterState());
      }
    }
  }
  
}
