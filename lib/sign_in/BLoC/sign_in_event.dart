abstract class SignInEvent {}

class SignInTextChangedEvent extends SignInEvent {
  final String? emailvalue;
  final String? passwordvalue;

  SignInTextChangedEvent({this.emailvalue, this.passwordvalue});
}

class SignInSubmittedEvent extends SignInEvent {
  final String? email;
  final String? password;

  SignInSubmittedEvent({this.email, this.password});
}
