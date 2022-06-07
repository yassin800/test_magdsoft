abstract class RegisterStates {}

class InitRegisterState extends RegisterStates {}

class LoadingRegisterState extends RegisterStates {}

class SuccessRegisterState extends RegisterStates {
  final int status;
  final String message;

  SuccessRegisterState(this.status, this.message);
}

class FailureRegisterState extends RegisterStates {}
