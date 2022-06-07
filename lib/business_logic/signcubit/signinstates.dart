import 'package:magdsoft_flutter_structure/data/models/usermodel.dart';

abstract class SignInStates {}

class InitSignInState extends SignInStates {}

class LoadingSignInState extends SignInStates {}

class SuccessSignInState extends SignInStates {
  final Usermodel account;

  SuccessSignInState(this.account);
}

class FailureSignInState extends SignInStates {
  final String message;

  FailureSignInState(this.message);
}
