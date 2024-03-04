abstract class SignInState {}

class SignInIntialState extends SignInState {}

class SignInValidState extends SignInState {}

class SignInErrorState extends SignInState {
  final String errormessage;

  SignInErrorState({required this.errormessage});
}

class SignInLoadingState extends SignInState {}
